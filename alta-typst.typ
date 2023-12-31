#let primary_color = rgb("#13294B")

#let icon(name, shift: 1.5pt) = {
  box(
    baseline: shift,
    height: 10pt,
    image(name + ".svg")
  )
  h(3pt)
}

#let findMe(services) = {
  set text(8pt)
  let icon = icon.with(shift: 2.5pt)

  services.map(service => {
      icon(service.name)

      if "display" in service.keys() {
        link(service.link)[#{service.display}]
      } else {
        link(service.link)
      }
    }).join(h(10pt))
  [
    
  ]
}

#let term(period, location) = {
  text(9pt)[#icon("calendar") #period #h(1fr) #icon("location") #location]
}

#let max_rating = 5
#let skill(name, rating) = {
  let done = false
  let i = 1

  name

  h(1fr)

  while (not done){
    let colour = rgb("#c0c0c0") // grey

    if (i <= rating){
      colour = primary_color
    }

    box(circle(
      radius: 4pt,
      fill: colour
    ))

    if (max_rating == i){
      done = true
    } else {
      // no spacing on last
      h(2pt)
    }

    i += 1
  }

  [\ ]
}


#let alta(
  name: "",
  links: (),
  tagline: [],
  left,
  right,
) = {
  set text(9.8pt, font: "IBM Plex Sans")
  set page(
    margin: (x: 54pt, y: 60pt),
  )
  show heading.where(
    level: 2
  ): it => text(
      fill: primary_color,
    [
      #{it.body}
      #v(-7pt)
      #line(length: 100%, stroke: 1pt + primary_color)
    ]
  )

  show heading.where(
    level: 4
  ): it => text(
    fill: primary_color,
    it.body
  )

  [= #name]

  findMe(links)

  tagline
  
  line(length: 100%, stroke: 0.1pt + rgb("#c0c0c0"))

  grid(
    columns: (0.49fr, 0.49fr),
    gutter: 15pt,
    left,
    right,
  )
}
