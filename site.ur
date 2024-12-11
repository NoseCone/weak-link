ffi jsAdd clientOnly jsFunc "uw_Site_jsAdd" : float -> float -> float

style quote

fun add x y : float = x + y
fun invokeJsAdd x y : float = jsAdd x y

fun main () =
  y <- source "y";
  let
    val x : string = Basis.strcat "x: " (show (add 3. 4.))
  in
    return <xml>
      <head>
        <link rel="stylesheet" type="text/css" href="http://adam.chlipala.net/style.css"/>
      </head>

      <body>
        <div class={quote}>Here's a quote.</div>
        {txt (add 1.1 2.)}<br/>
        {txt x}<br/>
        <dyn signal={y' <- signal y; return <xml>{txt y'}<br/></xml>} />
      </body>
    </xml>
  end
