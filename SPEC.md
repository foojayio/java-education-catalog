# Foojay Java in Education Catalog Site Specification

The Foojay Java in Education Catalog is a community-driven catalog of Java learning resources for students, educators, coding clubs, and developers. This repository is hosted under [Foojay.io – Friends of OpenJDK](https://foojay.io/) and maintained by the Java community.

## Site Structure

- Single `index.html` file (HTML + inline CSS, no build step)
- Dark theme with card-based layout
- Sticky nav, hero section, then content sections separated by dividers
- Responsive: cards collapse to single column on mobile
- Preserve the ordering in this spec

## Visual Design

- Dark background (`#0f1117`), card surfaces (`#1e2230`), accent purple (`#6c63ff`), accent blue (`#38bdf8`), accent pink (`#f472b6`)
- Cards have hover effects (border highlight, slight lift)
- Badge types: `badge-framework` (purple), `badge-inference` (blue), `badge-assistant` (pink), `badge-resource` (green)
- Where possible use icons for links - for blog or other use a world / www icon. don't use text labels.
- In a given section, use different colors for different badge types.

### Link Affordance

- **Clickable cards:** If a card has a single primary destination (e.g. resource cards with one link), make the entire card an `<a>` tag so clicking anywhere on the card navigates. Keep secondary icon links overlaid on top.
- **Card titles as links:** For cards with multiple links (frameworks, tools), make the card `h3` title a clickable link to the primary resource (docs or website). Style title links with an underline on hover.
- **Inline text links:** Any link within body text or descriptions should be underlined.
- **Don't mislead:** Only apply hover lift/border effects to cards that are actually clickable. Non-clickable cards should still have a subtle hover border but no translateY lift.

## Hero

- Title: "Foojay **Java in Education** Catalog" (gradient text on "Java in Education")
- Subtitle: "A community-driven catalog of Java learning resources — wikis, tutorials, and tools for students, educators, coding clubs, and developers."
- Description: "The goal is to provide an open, collaborative hub for students, educators, and developers to discover the best Java learning content for teaching, self-learning, and classroom use. This project is a call for the community to collaborate, to show that Java is still strong, and to highlight the numerous resources available for learning or teaching Java today."

---

## Resources

Community-curated Java learning resources. Contributions welcome!

### Java in Education – Wiki Page

- **Badge:** Resource
- **Description:** Community-curated wiki about Java teaching and educational initiatives. Maintained by the JCP (Java Community Process) community.
- **Links:** [Wiki](https://github.com/jcp-org/Java-in-Education/wiki/Java-in-Education---Wiki-Page)

### Foojay, the website for Friends Of OpenJDK

- **Badge:** Resource
- **Description:** Foojay is a central resource for the Java community’s daily ​information needs, a place for friends of OpenJDK, ​and a community platform for the Java ecosystem​, bringing together and helping Java professionals everywhere.
- **Links:** [Foojay.io](https://foojay.io/)

### Java Evolved

- **Badge:** Resource
- **Description:** Java has evolved. Your code can too. A collection of modern Java code snippets. Every old Java pattern next to its clean, modern replacement — side by side.
- **Links:** [java.evolved](https://javaevolved.github.io/)

### Learn Java on dev.java

- **Badge:** Resource
- **Description:** A collection of tutorials on how to get started with Java, getting to know the Java language, and more.
- **Links:** [Website](https://dev.java/learn/)

## Tutorials

### Foojay Java Quick Start

- **Badge:** Tutorial
- **Description:** On Foojay.io: Step-by-step instructions to install Java on Windows, Linux, and macOS. And 10 short lessons to learn the very basics of the Java programming language.
- **Links:** [Website](https://foojay.io/java-quick-start/)

### Creating your first Java application with IntelliJ IDEA

- **Badge:** Video
- **Description:** A video tutorial on how to create and run a simple Java application that prints Hello, World! to the system output.
- **Links:** [Video](https://www.youtube.com/watch?v=V_vXRRydnYI)

### Create your first Java application

- **Badge:** Video
- **Description:** A written tutorial on how to create, build, run and package a simple Java application.
- **Links:** [Website](https://www.jetbrains.com/help/idea/creating-and-running-your-first-java-application.html)

### Getting Started with Java by Devoxx4Kids

- **Badge:** Tutorial
- **Description:** Installing and Fundamentals.
- **Links:** [Repository](https://github.com/devoxx4kids/materials/blob/master/workshops/java/en/chapters/intro.adoc):

## Books

### Raising Young Coders: A Parent’s Guide to Teaching Programming at Home

- **Badge:** Parents
- **Description:** Introduce your children to programming at an early age and see how nurturing their interest can significantly contribute to their future success. This book offers creative, kid-friendly tools and projects to ignite childhood curiosity, all while confronting early-age gender biases in tech and supplementing the lack of creative and diverse tech curriculum in schools.
- **Links:** [Amazon](https://www.amazon.nl/Raising-Young-Coders-Teaching-Programming/dp/B0DVBQZ483)

### Getting Started with Java and Electronics with JBang – Pi4J

- **Badge:** Raspberry Pi
- **Description:** Want to get started with Java programming on the Raspberry Pi? JBang is a great way to create your first program to control electronic components connected to the GPIO pins of a Raspberry Pi.
- **Links:** [Website](https://www.pi4j.com/examples/jbang/)

## Minecraft

### Minecraft Modding by Devoxx4Kids

- **Badge:** Tutorial
- **Description:** How to do Minecraft modding with two different tools:
    - Forge: client-side modding, which only works if you have the mod installed. With Forge, you can do lots of cool things like making new blocks, items, mobs, and even biomes and dimensions.
    - Spigot: server-side modding, anyone who connects to the server can enjoy the mods installed. Most big servers, like Mineplex and Hypixel, are Spigot servers.
- **Links:** [Repository](https://github.com/devoxx4kids/materials/tree/master/workshops/minecraft)

## Raspberry Pi

### Control electronics with Java, JBang, and Pi4J 

- **Badge:** Raspberry Pi
- **Description:** Want to get started with Java programming on the Raspberry Pi? JBang is a great way to create your first program to control electronic components connected to a Raspberry Pi's GPIO pins.
- **Links:** [Repository](https://www.pi4j.com/examples/jbang/) 



 
---

## Footer

"Foojay Java in Education Catalog — Curating Java education resources. Contributions welcome on [GitHub](https://github.com/foojayio/java-education-catalog)."
