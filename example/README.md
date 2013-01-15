Parsing, Defensively
====================

# Introduction
You're a consultant doing a gig for a music promoter. There's a __Battle of the Bands__ event coming up and the promoter needs to, well, promote the bands participating by linking fans to each band's web site.

You are told by the promoter that you will get a CSV from her assistant, Franky, who is collecting the names and site links for each of the bands. You've met Franky. Franky's not "all there" at times so he tends to not pay attention to what he's doing very well. You decide to cover your bases as much as you can when handling his work.

You are tasked is to successfully parse Franky's CSV to produce a report of the bands and sites that are ready to go while identifying the ones that are not. You will need to account for potential errors or unforeseen circumstances in the data using an exception-handling strategy suitable for the task at hand.

# CSV Specifications & Data
You've asked the client to provide you a CSV with two columns, one for the band's name and other for their web site URL. Both band name and site URL are **supposed** to be valid. What you get from Franky is in /example/bands.csv. 