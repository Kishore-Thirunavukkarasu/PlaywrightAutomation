enum uivalidations {
    Empty = "empty",
    Existing = "existing",
    NotExisting = "not existing",
    SpecialChar = "special char",   // contain only special charaters
    AcceptedSpecialChar = "accepted special char", //   /-., contains only alphabets and the allowed special character and starting with alphabet
    AcceptedSpecialCharPhone = "accepted special char Phone", //   /-+ contains only alphabets and the allowed special character and starting with alphabet
    String = "string", // starts with alphabets and contain any values
    AlphaNumeric = "alphanumeric", // starts with alphabets and contain alphabets and numeric
    Startswithnumeric = "starts with numeric", // starts with numeric and contain only alphabets and numeric
    Alphabets = "alphabets",
    Numeric = "numeric",     // contains zeros
    Numbers = "numbers",    // contains only numbers without zeros
    NumericWithSpace = "numeric with space",  // starts with numeric and spaces in between
}
export default uivalidations;
