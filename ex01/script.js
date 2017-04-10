var reader = new FileReader();
reader.onload = function() {
    // this gets read of the mime-type data header
    var actual_contents = reader.result.slice(reader.result.indexOf(',') + 1);
    var what_i_need = new jsSHA(actual_contents, "B64").getHash("SHA-256", "HEX");
}
reader.readAsDataURL(some_file);
