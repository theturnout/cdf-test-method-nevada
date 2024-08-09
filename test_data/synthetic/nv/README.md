# Example files for NV AVR implementation

> All data in the example files are fictitious.

The NV SOS has developed several examples for AVR. Each cover a different scenario:

**Request Examples:**

- `AVR-1` contains a basic example
- `AVR-2` contains a more complex address example; 17-year old voter, and additional contact information
- `AVR-3` contains a complex example using many optional fields
- `AVR-4` contains a military voter example

| Top             | Scenarios                         | AVR-1     | AVR-2     | AVR-3     | AVR-4        |
|-----------------|-----------------------------------|-----------|-----------|-----------|--------------|
| Geoaddress      | Mailing Address - In Country      |           |           | X         |              |
|                 | Mailing Address - Out of Country  |           |           |           | X            |
|                 | Physical Address - Secondary Unit |           | X         |           |              |
| Classifications | 17 Year Old Voter                 |           | X         |           |              |
|                 | Military Classification           |           |           |           | X            |
| Identification  | DL                                | X         |           | X         |              |
|                 | SSN                               |           | X         |           |              |
|                 | No ID                             |           |           |           | X            |
| Contact Info    | Telephone                         |           | X/SMS     |           | X            |
|                 | Email                             |           | X         |           | X            |
|                 | Helper                            | N/A       | N/A       | N/A       | N/A          |
|                 | Place of Birth                    |           | X         |           |              |
| Other Fields    | Previous Registered Location      |           |           | X         |              |
|                 | Previous Name                     |           |           | X         |              |
|                 | Larger type ballot                |           |           | X         |              |
|                 | Language                          |           |           | Spanish   |              |
|                 | Agency                            | DMV       | DMV       | DMV       |              |
|                 | Party Affiliation                 | N/A       | N/A       | N/A       | N/A          |
|                 | Signature                         | image/jpg | image/gif | image/png |              |
| AVR Specific    | Agency                            | DMV       | DMV       | DMV       | Silver State |

**Response Examples:**

- `AVRA-1` contains a request acknowledgement
- `AVRJ-1` contains a request rejection due to missing First Name
- `AVRJ-2` contains a request rejection due to ineligibility due to Date of Birth
- `AVRJ-3` contains a request rejection due to the use of an incorrect form
