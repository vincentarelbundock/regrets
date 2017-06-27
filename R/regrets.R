fact_list = c("The Great Egret is the symbol of the National Audubon Society, one of the oldest environmental organizations in North America. Audubon was founded to protect birds from being killed for their feathers.",
"Not all young that hatch survive the nestling period. Aggression among nestlings is common and large chicks frequently kill their smaller siblings. This behavior, known as siblicide, is not uncommon among birds such as hawks, owls, and herons, and is often a result of poor breeding conditions in a given year.",
"The pristinely white Great Egret gets even more dressed up for the breeding season. A patch of skin on its face turns neon green, and long plumes grow from its back. Called aigrettes, those plumes were the bane of egrets in the late nineteenth century, when such adornments were prized for ladies’ hats.",
"In mixed-species colonies, Great Egrets are often the first species to arrive, and their presence may induce nesting among other species.",
"Great Egrets fly slowly but powerfully: with just two wingbeats per second their cruising speed is around 25 miles an hour.",
"Though it mainly hunts while wading, the Great Egret occasionally swims to capture prey or hovers (somewhat laboriously) over the water and dips for fish.",
"The oldest known Great Egret was 22 years, 10 months old and was banded in Ohio.")


#' Print a random fact about egrets
#' @export
regrets_fact = function() {
    out = sample(fact_list, 1)
    cowsay::say(out, by = 'egret')
}

#' Save a random egret photo to file
#' @param file path where you want to save your egret .jpg picture
#' @export
regrets_photo = function(file = 'test.jpg') {
    out = photo_list[[sample(1:length(photo_list), 1)]]
    jpeg::writeJPEG(out, target = file)
}
