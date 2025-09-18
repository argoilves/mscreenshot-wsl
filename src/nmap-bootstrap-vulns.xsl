<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="utf-8" indent="yes" doctype-system="about:legacy-compat"/>
  <xsl:template match="/">
    <html lang="en">
      <head>
        <meta name="referrer" content="no-referrer"/> 
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous"/>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous"/>
        <link rel="stylesheet" href="https://cdn.datatables.net/buttons/2.0.1/css/buttons.dataTables.min.css" integrity="sha384-0OeHd2TJxoSDnW9bOIukOL7+BcfI6b17OHv54+JWrUbWq7ABgBO0rjW3OinB5vbG" crossorigin="anonymous"/>
        <link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap.min.css" type="text/css" integrity="sha384-VEpVDzPR2x8NbTDZ8NFW4AWbtT2g/ollEzX/daZdW/YvUBlbgVtsxMftnJ84k0Cn" crossorigin="anonymous"/>

        <script src="https://code.jquery.com/jquery-3.3.1.js" integrity="sha384-fJU6sGmyn07b+uD1nMk7/iSb4yvaowcueiQhfVgQuD98rfva8mcr1eSvjchfpMrH" crossorigin="anonymous"></script>
        <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js" integrity="sha384-rgWRqC0OFPisxlUvl332tiM/qmaNxnlY46eksSZD84t+s2vZlqGeHrncwIRX7CGp" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js" integrity="sha384-v9EFJbsxLXyYar8TvBV8zu5USBoaOC+ZB57GzCmQiWfgDIjS+wANZMP5gjwMLwGv" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js" integrity="sha384-HUHsYVOhSyHyZRTWv8zkbKVk7Xmg12CCNfKEUJ7cSuW/22Lz3BITd3Om6QeiXICb" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js" integrity="sha384-UAA3vlTPq9dwxB61awBFhR7Y5uBFOKQWuZueu4C6uI48gjIoqI/OTmYWEYWZXbGR" crossorigin="anonymous"></script>
        <script src="https://cdn.datatables.net/buttons/2.0.1/js/dataTables.buttons.min.js" integrity="sha384-MGimb05YiSGNcXiLlj03UNahXBECHmFTe5iVBqh6sf2G7ccabI3/EOqzBnNw97/T" crossorigin="anonymous"></script>
        <script src="https://cdn.datatables.net/buttons/2.0.1/js/buttons.html5.min.js" integrity="sha384-pp2ArcKo71umWphZ7QCCjQbnICkbOkLF88ZeoeZDPbqdAVvxZlcrla3lyT7pY/ue" crossorigin="anonymous"></script>
        <script src="https://cdn.datatables.net/buttons/2.0.1/js/buttons.colVis.min.js" integrity="sha384-enGTgEZOvC7C8P91Jt/27n1V3xD5SIzGi1e+DzYJvAts546YTsj3CNmnL0G/zlVn" crossorigin="anonymous"></script>
        <script src="https://cdn.datatables.net/buttons/2.0.1/js/buttons.bootstrap.min.js" integrity="sha384-Ndtz/aMKkdc9b0uTCirKXA6kJ8QfBTv73Ph9sv0wOiqK7NENdLN+qTpPX5skuhiM" crossorigin="anonymous"></script>
        <script src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap.min.js" integrity="sha384-7PXRkl4YJnEpP8uU4ev9652TTZSxrqC8uOpcV1ftVEC7LVyLZqqDUAaq+Y+lGgr9" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
        <script src="https://cdn.datatables.net/plug-ins/2.1.0/sorting/ip-address.js" integrity="sha384-pbrITLqgA4lSZJgcYMK/c5hfUpOg+2vjjMQPdRv4hPEoBFYVWEuF1H3faZskzO9a" crossorigin="anonymous"></script>
        <style>
            .resize-container { 
                width: 300px;
                height: 200px;
                overflow: hidden;
            }
            .resize-container img { 
                width: 100%; 
                height: 100%; 
                object-fit: contain;
            }
            .target:before {
                content: "";
                display: block;
                height: 50px;
                margin: -20px 0 0;
            }
            @media only screen and (min-width:1900px) {
                .container { width: 1800px; }
            }
            .footer {
                margin-top:60px;
                padding-top:45px;
                width: 100%;
                height: 180px;
                background-color: #f5f5f5;
            }
            .clickable { cursor: pointer; }
            .panel-heading > h3:before {
                font-family: 'Glyphicons Halflings';
                content: "\e114"; /* glyphicon-chevron-down */
                padding-right: 1em;
            }
            .panel-heading.collapsed > h3:before {
                content: "\e080"; /* glyphicon-chevron-right */
            }
        </style>
        <title>Nmap Results</title>
      </head>
      <body>
        <script>
          function highlight(){
            $("#table-services").dataTable().fnDestroy()
            let keywords = document.getElementById('keyword-input').value.split(',');
            let content = document.getElementById('table-services').innerHTML;
            document.getElementById('table-services').innerHTML = transformContent(content, keywords)
            $('#table-services').DataTable( {
              "lengthMenu": [ [10, 25, 50, 100, -1], [10, 25, 50, 100, "All"] ],
              "pageLength": -1,
              "order": [[ 0, 'desc' ]],
              "columnDefs": [
                { "targets": [0], "orderable": true },
              ],
              dom:'lBfrtip', 
              stateSave: true,
              buttons: ['copyHtml5', 'csvHtml5', 'excelHtml5', 'pdfHtml5'],
            });
          }
          function transformContent(content, keywords){
            let temp = content
            keywords.forEach(keyword => {
              temp = temp.replace(new RegExp(keyword, 'ig'), `<span style="color: red;">${keyword}</span>`)
            })
            return temp
          }
        </script>
        <nav class="navbar navbar-default navbar-fixed-top">
          <div class="container-fluid">
            <div class="navbar-header">
              <a class="navbar-brand" href="#"><span class="glyphicon glyphicon-home"></span></a>
            </div>
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
              <ul class="nav navbar-nav">
                <li><a href="#scannedhosts">Scanned Hosts</a></li>
                <li><a href="#openservices">Open Services</a></li>
                <li><a href="#webservices">Web Services</a></li>
                <li><a href="#onlinehosts">Online Hosts</a></li>
              </ul>
            </div>
          </div>
        </nav>
        <div class="container" style="width: 94%">
          <div class="jumbotron" style="margin-top: 80px; padding: 30px;">
            <h2>Nmap Port Scanning Results</h2>
            <h4><small>Nmap Version <xsl:value-of select="/nmaprun/@version"/> | <xsl:value-of select="/nmaprun/@startstr"/> – <xsl:value-of select="/nmaprun/runstats/finished/@timestr"/></small></h4>
            <pre><xsl:value-of select="/nmaprun/@args"/></pre>
            <p class="lead">
              <xsl:value-of select="/nmaprun/runstats/hosts/@total"/> hosts scanned.
              <xsl:value-of select="/nmaprun/runstats/hosts/@up"/> hosts up.
              <xsl:value-of select="/nmaprun/runstats/hosts/@down"/> hosts down.
            </p>
          </div>

          <h2 id="scannedhosts" class="target">Scanned Hosts<xsl:if test="/nmaprun/runstats/hosts/@down > 0"><small> (offline hosts are hidden)</small></xsl:if></h2>
          <div class="table-responsive">
            <table id="table-overview" class="table table-striped dataTable" role="grid">
              <thead>
                <tr>
                  <th>State</th>
                  <th>Address</th>
                  <th>Hostname</th>
                  <th>TCP (open)</th>
                </tr>
              </thead>
              <tbody>
                <xsl:for-each select="/nmaprun/host[status/@state='up']">
                  <tr>
                    <td><span class="label label-success"><xsl:value-of select="status/@state"/></span></td>
                    <td><a href="#onlinehosts-{translate(address/@addr, '.', '-')}"><xsl:value-of select="address/@addr"/></a></td>
                    <td><xsl:value-of select="hostnames/hostname/@name"/></td>
                    <td><xsl:value-of select="count(ports/port[state/@state='open' and @protocol='tcp'])"/></td>
                  </tr>
                </xsl:for-each>
              </tbody>
            </table>
          </div>

          <h2 id="onlinehosts" class="target">Online Hosts</h2>
          <xsl:for-each select="/nmaprun/host[status/@state='up']">
            <div class="panel panel-default">
              <div class="panel-heading clickable" data-toggle="collapse" data-target="#host-body-{translate(address/@addr, '.', '-')}">
                <h3 class="panel-title" id="onlinehosts-{translate(address/@addr, '.', '-')}"><xsl:value-of select="address/@addr"/><xsl:if test="hostnames/hostname"> - <xsl:value-of select="hostnames/hostname/@name"/></xsl:if></h3>
              </div>
              <div id="host-body-{translate(address/@addr, '.', '-')}" class="panel-body collapse in">
                <div class="table-responsive">
                  <table class="table table-bordered">
                    <thead>
                      <tr>
                        <th>Port</th>
                        <th>State</th>
                        <th>Service</th>
                        <th>Product / Version</th>
                        <th>Extra Info &amp; Scripts</th>
                      </tr>
                    </thead>
                    <tbody>
                      <xsl:for-each select="ports/port">
                        <tr>
                          <td><xsl:value-of select="@portid"/>/<xsl:value-of select="@protocol"/></td>
                          <td>
                              <xsl:choose>
                                  <xsl:when test="state/@state = 'open'"><span class="label label-success">open</span></xsl:when>
                                  <xsl:otherwise><span class="label label-default"><xsl:value-of select="state/@state"/></span></xsl:otherwise>
                              </xsl:choose>
                          </td>
                          <td><xsl:value-of select="service/@name"/></td>
                          <td><xsl:value-of select="service/@product"/> <xsl:value-of select="service/@version"/></td>
                          <td>
                            <xsl:if test="service/@extrainfo"><pre><xsl:value-of select="service/@extrainfo"/></pre></xsl:if>
                            <xsl:for-each select="script">
                              <xsl:choose>
                                <xsl:when test="@id='vulners'">
                                  <xsl:for-each select="table">
                                    <div style="margin-top: 5px;">
                                      <b><xsl:value-of select="@key"/></b>
                                      <xsl:for-each select="table">
                                        <div style="margin-left: 15px;">
                                          <span class="label">
                                            <xsl:variable name="cvss" select="number(elem[@key='cvss'])"/>
                                            <xsl:choose>
                                              <xsl:when test="$cvss &gt;= 9.0"><xsl:attribute name="class">label label-danger</xsl:attribute></xsl:when>
                                              <xsl:when test="$cvss &gt;= 7.0"><xsl:attribute name="class">label label-warning</xsl:attribute></xsl:when>
                                              <xsl:when test="$cvss &gt;= 4.0"><xsl:attribute name="class">label label-primary</xsl:attribute></xsl:when>
                                              <xsl:otherwise><xsl:attribute name="class">label label-default</xsl:attribute></xsl:otherwise>
                                            </xsl:choose>
                                            <xsl:value-of select="format-number($cvss, '0.0')"/>
                                          </span>
                                          <xsl:text> </xsl:text>
                                          <a target="_blank">
                                            <xsl:choose>
                                              <xsl:when test="elem[@key='type'] = 'cve'">
                                                <xsl:attribute name="href">https://nvd.nist.gov/vuln/detail/<xsl:value-of select="elem[@key='id']"/></xsl:attribute>
                                              </xsl:when>
                                              <xsl:otherwise>
                                                <xsl:attribute name="href">https://vulners.com/<xsl:value-of select="elem[@key='type']"/>/<xsl:value-of select="elem[@key='id']"/></xsl:attribute>
                                              </xsl:otherwise>
                                            </xsl:choose>
                                            <xsl:value-of select="elem[@key='id']"/>
                                          </a>
                                          <xsl:if test="elem[@key='is_exploit'] = 'true'">
                                            <xsl:text> </xsl:text>
                                            <span class="label label-danger" style="font-size: 0.8em;">EXPLOIT</span>
                                          </xsl:if>
                                        </div>
                                      </xsl:for-each>
                                    </div>
                                  </xsl:for-each>
                                </xsl:when>
                                <xsl:when test="@id='http-screenshot'">
                                  <div class="screenshot-container"><xsl:value-of select="@output" disable-output-escaping="yes"/></div>
                                </xsl:when>
                                <xsl:otherwise>
                                  <h5><xsl:value-of select="@id"/></h5>
                                  <pre><xsl:value-of select="@output"/></pre>
                                </xsl:otherwise>
                              </xsl:choose>
                            </xsl:for-each>
                          </td>
                        </tr>
                      </xsl:for-each>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
          </xsl:for-each>
        </div>
        <script>
          $(document).ready(function() {
            $('#table-overview').DataTable({
                "lengthMenu": [ [10, 25, 50, -1], [10, 25, 50, "All"] ],
                "pageLength": 10
            });
          });
        </script>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>