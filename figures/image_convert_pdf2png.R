setwd(this.path::here())
pdfs <- list.files(pattern = ".pdf")
base <- stringr::str_remove(pdfs, ".pdf")
for(i in seq_along(pdfs)){
  image <- magick::image_read_pdf(path = pdfs[i],density = 250)
  magick::image_write(image, paste0(base[i], ".png"))
}
