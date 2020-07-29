module DocumentSvg exposing (view)

import Color exposing (Color)
import Element exposing (Element)
import Svg exposing (..)
import Svg.Attributes exposing (..)


strokeColor : String
strokeColor =
    "black"


pageTextColor : String
pageTextColor =
    "black"


fillColor : String
fillColor =
    "url(#grad1)"


fillGradient : Svg msg
fillGradient =
    gradient
        (Color.rgb255 5 117 230)
        (Color.rgb255 0 242 96)


gradient : Color -> Color -> Svg msg
gradient color1 color2 =
    linearGradient
        [ id "grad1"
        , x1 "0%"
        , y1 "0%"
        , x2 "100%"
        , y2 "0%"
        ]
        [ stop
            [ offset "10%"
            , Svg.Attributes.style ("stop-color:" ++ Color.toCssString color1 ++ ";stop-opacity:1")
            ]
            []
        , stop
            [ offset "100%"
            , Svg.Attributes.style ("stop-color:" ++ Color.toCssString color2 ++ ";stop-opacity:1")
            ]
            []
        ]


view : Element msg
view =
    svg
        [ version "1.1"
        , viewBox "0 0 70 70"
        , width "56"
        , height "56"
        , width "80px"
        ]
        [ defs []
            [ fillGradient ]
        , metadata [] []
        , g 
            [ Svg.Attributes.transform "matrix(.53882 0 0 .53882 353.34 -117.2)" ]
            [ Svg.path 
                [ Svg.Attributes.d "m-619.59 227.53c27.879 38.485 31.396 72.872-22.562 97.59l66.383-10.257-24.762-31.329 35.916-16.913z"
                , Svg.Attributes.fill "#b3b3b3"
                ] []
            , Svg.path 
                [ Svg.Attributes.d "m-629.79 241.67c27.879 38.485 31.396 72.872-22.562 97.59l66.383-10.257-24.762-31.329 35.916-16.913z"
                , Svg.Attributes.fill "#ccc"
                ] []
            , Svg.circle 
                [ Svg.Attributes.cx "-570.45"
                , Svg.Attributes.cy "299.69"
                , Svg.Attributes.r "35.152" 
                , Svg.Attributes.stroke "#505050" 
                , Svg.Attributes.strokeWidth "3"
                ] []
            , g 
                [ Svg.Attributes.fill "none" ] 
                [ ellipse 
                    [ Svg.Attributes.cx "-570.13"
                    , Svg.Attributes.cy "266.7" 
                    , Svg.Attributes.rx "38.22"
                    , Svg.Attributes.ry "11.225"
                    , Svg.Attributes.stroke "#6d6d6d"
                    , Svg.Attributes.strokeWidth "6"
                    ] []
                , rect 
                    [ Svg.Attributes.x "-567.07"
                    , Svg.Attributes.y "288.95"
                    , Svg.Attributes.width "18.629"
                    , Svg.Attributes.height "18.629"
                    , Svg.Attributes.stroke "#6d6d6d"
                    , Svg.Attributes.strokeWidth "2"
                    ] []
                , Svg.path [ Svg.Attributes.d "m-568.44 294.1 10.829 10.829 18.323-21.772"
                           , Svg.Attributes.stroke "#bcbcbc"
                           , Svg.Attributes.strokeWidth "2.2667"
                           ] []
                ]
            ]
        ]
        |> Element.html
        |> Element.el []
