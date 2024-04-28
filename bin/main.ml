[@@@warning "-27"]

let get_name req = Dream.html @@ "Good morning, " ^ (Dream.param req "word")
let default req = Dream.html @@ "Good morning, world!"

let () =
  Dream.run
  @@ Dream.logger
  @@ Dream.router 
  [
    Dream.get "/" default;
    Dream.get "/:word" @@ get_name
  ]
