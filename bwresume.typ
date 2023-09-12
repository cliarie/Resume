#import "template.typ": *
#show: project

#let title_items = (
  [(408) 709-9505],
  link("mailto:cychen6@illinois.edu"),
  link("https://linkedin.com/in/cliarie")[#fab("linkedin") cliarie],
  link("https://github.com/cliarie")[#fab("github") cliarie],
)

// Title row.
#align(center)[
  #block(text(weight: 700, size: 1.5em)[Claire Chen])
  #title_items.join([#h(0.5em)•#h(0.5em)])
]

= Education

#entry[
  == University of Illinois, Urbana Champaign

  Mathematics and Computer Science, B.S.
][
  *Expected Graduation:* May 2026\
  *Grade:* 4.0/4.0\
  \* currently taking course
]

*Relevant Coursework:* Programming with Java · Programming with Rust and C++\* · Discrete Structures\* · Matrix Theory · Fundamental Mathematics\* · Applied Complex Variables\*
    
*Planned Coursework:* Data Structures · Computer Architecture · Systems Programming


= Experience

#entry[
  == UC Santa Barbara Vision Research Lab
  _Computer Vision Research Engineer_
][Jun 2023 - Aug 2023]

- Conducted biomedical image analysis of distinguishing viral pneumonia COVID-19 from other forms of viral pneumonia through deep learning multi-class image classification.
- Produced novel two layer stacked ensemble method incorporating transfer learning, hyperparameter tuning, image preprocessing, and ensemble learning
- Automated COVID-pneumonia diagnosis achieved 21.37% improved accuracy to baseline ResNet50.
- Presented in bi-weekly meetings; presented research at UCSB poster session and Research Symposium.

#entry[
  == Lynbrook Mobile App
  _Lead Developer, Associated Student Body Commissioner_
][Apr 2022 - Aug 2023]

- Led the development team of Lynbrook High School's mobile app and integrated school, student organization, faculty, school board, and sports events onto the app.
- Liaised between student body, faculty, school board, and development team; Surveyed for feedback and handled requests from all clients to keep app prevalent to the student body.
- Worked with *React Native* and *TypeScript*, led team of 5 developers, and trained 3 underclassmen.
- App aids 40 school-wide events, assists 20+ clubs, and serves 1.9k students, teachers, and parents.

#entry[
  == Lynbrook High School
  _Program Mechanic_
][Aug 2021 - Jun 2022]

- Worked for English teacher and programmed *Python* scripts to help track student assignments.
- Created user-friendly website using *FireBase*, working both frontend and backend to help teacher count student Google Doc comments, detect late work in Google Docs, and track Schoology discussion posts.
- Created online chat for classroom bonding using *Firebase* and developed website's UI/UX design using *JavaScript* and HTML/CSS.

= Projects

#entry[
  == Gradient Boosting on Identifying Age-Related Conditions
  _Python · TensorFlow_
][]

- Worked for the InVitro Cell Research Company and analyzed a dataset of over fifty anonymized health characteristics linked to three age-related conditions.
- Trained a ML model to predict patients’ conditions given their health characteristics using Gradient Boosting (CatBoost, LightBoost, XGBM).
- Handled challenges of an unbalanced and limited dataset and referenced strategies from cutting-edge research papers and conferences.


#entry[
  == ChicksOut App
  _Java · C++ · GUI_
][]

- Developed an Android puzzle game in Android Studio Code similar to the "Lights Out" puzzle.
- Programmed ChicksOut game and UI in Java, and coded a followup puzzle solver in C++.


= Technical Skills

#let TeX = style(styles => {
  set text(font: "New Computer Modern")
  let e = measure("E", styles)
  let T = "T"
  let E = text(1em, baseline: e.height * 0.31, "E")
  let X = "X"
  box(T + h(-0.15em) + E + h(-0.125em) + X)
})

#let LaTeX = style(styles => {
  set text(font: "New Computer Modern")
  let a-size = 0.66em
  let l = measure("L", styles)
  let a = measure(text(a-size, "A"), styles)
  let L = "L"
  let A = box(scale(x: 105%, text(a-size, baseline: a.height - l.height, "A")))
  box(L + h(-a.width * 0.67) + A + h(-a.width * 0.25) + TeX)
})

*Languages:* Python · Java · C++ · JavaScript · TypeScript · HTML/CSS · Rust

*Web Frameworks and Developer Tools:* React Native · Docker · #LaTeX · Typst · Linux · Git · GitHub Actions

*Other Technologies:* NumPy · PyTorch · TensorFlow · Microsoft Excel
