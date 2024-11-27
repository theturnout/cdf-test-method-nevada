# Example files for NV AVR implementation

> All data in the example files are fictitious.

The NV SOS has developed several examples for AVR. Each cover a different scenario:

**Request Examples:**

- `AVR-1` contains a basic example
- `AVR-2` contains a more complex address example; 17-year old voter, and additional contact information
- `AVR-3` contains a complex example using many optional fields
- `AVR-4` contains a military voter example
- `AVR-5` contains a basic example with a `GeneralAddressClass` address for residence

A full treatment of the scenarios handled by each test file is given by the following table:

| Top             | Scenarios                         | AVR-1     | AVR-2     | AVR-3     | AVR-4        | AVR-5     |
|-----------------|-----------------------------------|-----------|-----------|-----------|--------------|-----------|
| Geoaddress      | Mailing Address - In Country      |           |           | X         |              |           |
|                 | Mailing Address - Out of Country  |           |           |           | X            |           |
|                 | Physical Address - Secondary Unit |           | X         |           |              |           |
|                 | Address Type                      | Numbered  | Numbered  | Numbered  | Numbered     | General   |
| Classifications | 17 Year Old Voter                 |           | X         |           |              |           |
|                 | Military Classification           |           |           |           | X            |           |
| Identification  | DL                                | X         |           | X         |              | X         |
|                 | SSN                               |           | X         |           | X            |           |
| Contact Info    | Telephone                         |           | X/SMS     |           | X            |           |
|                 | Email                             |           | X         |           | X            |           |
|                 | Place of Birth                    |           | X         |           |              |           |
| Other Fields    | Previous Registered Location      |           |           | X         |              |           |
|                 | Previous Name                     |           |           | X         |              |           |
|                 | Printed Language  Preference      | X         |           | X         |              |           |
|                 | Larger type ballot                | X         |           | X         |              |           |
|                 | Language                          |           |           | Spanish   |              |           |
|                 | Signature                         | image/jpg | image/gif | image/png |              |           |
| AVR Specific    | Agency                            | DMV       | DMV       | DMV       | Silver State | DMV       |

**Response Examples:**

- `AVRA-1` contains a request acknowledgement
- `AVRJ-1` contains a request rejection due to missing First Name
- `AVRJ-2` contains a request rejection due to ineligibility due to Date of Birth
- `AVRJ-3` contains a request rejection due to the use of an invalid form