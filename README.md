tls-cc-tools (formally tls-cc-validator)
======================

How to use:
1. Add OpenSSL1.0.1 to your Test-System
2. Create dhparams.pem file in dir /tls-cc-tool/
$  openssl dhparam -out dhparams.pem 4096
$  openssl dhparam -out dhparams.pem 2048
3. Edit the Makefile in the dir /tls-cc-tool/
4. Include the install Path of your OpenSSL1.0.1
5. Important: I am unsure if FCS_TLSC_EXT_1_1_TEST_1 works! 
6. Uncomment or recomment the Tests you need in Tests.c.

# Whats new & what did we change
- made it compatible with OpenSSL 1.0.1, 1.0.2 and 1.1.x
- fixed a bug that caused it to loop when TLS shutdown resulted in an error
- logic bugs in if() statements
- remove test/debug printfs



## About This Project
This project is intended to demonstrate how one might use OpenSSL (or similarly to constructed TLS engine) to test a TLS client for conformance to
the TLS requirements as laid out by NIAP's Application Software Protection Profile(https://www.niap-ccevs.org/pp/PP_APP_v1.1/) as part of the Common Criteria framework.

## License
This work was prepared by an U.S. Government employee and, therefore, is excluded from copyright by Section 105 of the Copyright Act of 1976.
See http://www.copyright.gov/title17/ for full documentation.

## Disclaimer
This Work is provided "as is." Any express or implied warranties, including but not limited to, the
implied warranties of merchantability and fitness for a particular purpose are disclaimed. In no event
shall the United States Government be liable for any direct, indirect, incidental, special, exemplary or
consequential damages (including, but not limited to, procurement of substitute goods or services, loss
of use, data or profits, or business interruption) however caused and on any theory of liability, whether
in contract, strict liability, or tort (including negligence or otherwise) arising in any way out of the use of
this Guidance, even if advised of the possibility of such damage.

The User of this Work agrees to hold harmless and indemnify the United States Government, its agents
and employees from every claim or liability (whether in tort or in contract), including attorneys' fees,
court costs, and expenses, arising in direct consequence of Recipient's use of the item, including, but not
limited to, claims or liabilities made for injury to or death of personnel of User or third parties, damage
to or destruction of property of User or third parties, and infringement or other violations of intellectual
property or technical data rights.

Nothing in this Work is intended to constitute an endorsement, explicit or implied, by the U.S.
Government of any particular manufacturer's product or service.

Copyright and Related Rights in the Work worldwide are waived through the CC0 1.0 Universal license.
