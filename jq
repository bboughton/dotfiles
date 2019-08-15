# Additional function for jq

# Convert input to camel case
#
# Example:
#   echo '{"a":"foo_bar"}' | jq '.a | camel' # returns "fooBar"
def camel:
  gsub( "_(?<a>[a-z])"; .a|ascii_upcase);

# Convert input to underscore
#
# Example:
#   echo '{"a":"fooBar"}' | jq '.a | underscore' # returns "foo_bar"
def underscore:
  gsub( "(?<a>[A-Z])"; "_"+.a|ascii_downcase);

def walk(f):
  . as $in
  | if type == "object" then
      reduce keys[] as $key
        ( {}; . + { ($key):  ($in[$key] | walk(f)) } ) | f
  elif type == "array" then map( walk(f) ) | f
  else f
  end;
