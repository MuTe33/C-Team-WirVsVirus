import 'package:flutter/material.dart';

class FaqView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "staatus",
            style: TextStyle(color: Colors.black, fontSize: 26),
          ),
          backgroundColor: Colors.white),
      body: Column(
        children: <Widget>[
          Container(
            color: Color(0xFF014B76),
            width: MediaQuery.of(context).size.width,
            height: 110,
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 36),
              child: Text("Situation in Deutschland",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Wichtige Fragen und",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  Text("Antworten",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  Text("zum Coronavirus",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                ],
              ),
              Image(image: AssetImage("assets/pictures/brd.png")),
            ],
          ),
          SizedBox(height: 10),
          Expanded(
            child: ListView(
              children: <Widget>[
               Image(image: AssetImage("assets/pictures/curve.png"), fit: BoxFit.fill,),
                SizedBox(height: 10),
                Card(
                  child: ExpansionTile(
                    title: Text(
                      "Wie wird das Coronavirus übertragen? Wie kann man sich schützen?",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(20),
                        child: Text(
                          '''Das Coronavirus kann von Mensch zu Mensch übertragen werden. Um das Ansteckungsrisiko zu verringern, gilt daher wie für alle Infektionskrankheiten: gute Handhygiene, Husten- und Nies-Etikette sowie Abstand zu Erkrankten halten.

Eine Übertragung über importierte Lebensmittel und andere importierte Waren wie beispielsweise Spielzeug ist bisher nicht dokumentiert. Das für diese Frage zuständige Bundesinstitut  für Risikobewertung  kommt zu der Auffassung: Nach derzeitigem Wissensstand ist es unwahrscheinlich, dass importierte Waren Quelle einer Infektion mit dem neuartigen Coronavirus sein könnten. Nach aktuellem Stand der Wissenschaft kann das Coronavirus auch nicht von Haustieren auf Menschen oder umgekehrt von Menschen auf Haustieren übertragen werden.''',
                          style: TextStyle(fontSize: 14),
                        ),
                      )
                    ],
                  ),
                ),
                Card(
                  child: ExpansionTile(
                    title: Text(
                      "Welche Krankheitszeichen löst das neuartige Virus aus?",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(20),
                        child: Text(
                          '''Husten, Schnupfen, Halskratzen und Fieber: Eine Infektion mit dem neuartigen Coronavirus kann - wie bei anderen Atemwegserkrankungen auch - zu diesen Krankheitszeichen führen. Einige Betroffene klagen auch über Durchfall. Bei einem Teil der Patienten geht das Virus mit einem schwereren Verlauf einher und kann zu Atemproblemen und Lungenentzündung führen.''',
                          style: TextStyle(fontSize: 14),
                        ),
                      )
                    ],
                  ),
                ),
                Card(
                  child: ExpansionTile(
                    title: Text(
                      "Für welche Personengruppen ist eine Infektion mit dem Virus besonders gefährlich?",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(20),
                        child: Text(
                          '''Bei den bisher berichteten Fällen verliefen vier von fünf Krankheitsverläufen mild. Bei einem Teil der Patienten kann das Virus zu einem schwereren Verlauf mit Atemproblemen und zu Lungenentzündung führen. Das Risiko für einen scheren Verlauf ist nicht für alle Personengruppen gleich: Ältere, Raucher und Raucherinnen sowie Menschen mit bestimmten Vorerkrankungen sind eher betroffen. Für diese Risikogruppen ist es besonders wichtig, das Risiko einer Infektion größtmöglich zu mindern. Wichtig daher: allgemeine Verhaltensregeln (Hände waschen, Abstand halten) beachten und soziale Kontakte reduzieren.

Wie groß der Anteil derjenigen ist, die aufgrund des Virus sterben, lässt sich derzeit schwer eindeutig sagen. Dazu sind noch zu viele Fragen offen. eher von Todesfälle traten bisher vor allem bei Patienten auf, die älter waren und/oder zuvor an chronischen Grunderkrankungen litten.Vertreter der Weltgesundheitsorganisation halten eine Rate der Todesfälle in Chinas Regionen ohne das Epizentrum Hubei von 0,7 Prozent für möglich. Das wären sieben Verstorbene pro 1.000 Infizierte. Inwieweit diese Rate der Todesfälle auch für europäische Länder relevant wird, kann derzeit niemand seriös beantworten. Offenbar verhält sich das neuartige Coronavirus anders als der Influenza-Erreger, ist insgesamt weniger ansteckend, kann aber bei bestimmten sensiblen Bevölkerungsgruppen zu schweren Erkrankungen führen.''',
                          style: TextStyle(fontSize: 14),
                        ),
                      )
                    ],
                  ),
                ),
                Card(
                  child: ExpansionTile(
                    title: Text(
                      "Was sollte ich tun, wenn ich den Verdacht habe, mich angesteckt zu haben?",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(20),
                        child: Text(
                          '''Wer persönlichen Kontakt zu einer Person hatte, bei der das neuartige Coronavirus im Labor nachgewiesen wurde, sollte sich unverzüglich telefonisch an das Gesundheitsamt wenden  - auch wenn keine Krankheitszeichen erkennbar sind. Das zuständige Amt lässt sich über eine Datenbank des Robert Koch-Instituts (RKI) finden.

Wer sich in einem vom Robert Koch-Institut ausgewiesenen Risikogebiet aufgehalten hat, sollte – auch wenn er keine Krankheitszeichen hat – unnötige Kontakte vermeiden und nach Möglichkeit zu Hause bleiben.

Beim Auftreten von Krankheitszeichen der Atemwege sollten man die Husten- und Nies-Etikette sowie eine gute Handhygiene beachten und eine Arztpraxis erst nach telefonischer Voranmeldung aufsuchen.

''',
                          style: TextStyle(fontSize: 14),
                        ),
                      )
                    ],
                  ),
                ),
                Card(
                  child: ExpansionTile(
                    title: Text(
                      "Welche Vorbereitungen sind in Deutschland getroffen? ",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(20),
                        child: Text(
                          '''Ziel der von Bund, Ländern und Kommunen ergriffenen Maßnahmen ist es, die Ausbreitung des Virus so gut es geht zu verlangsamen und damit Zeit zu gewinnen. Zeit, um diejenigen, die erkranken, bestmöglich versorgen zu können. Bund und Länder haben daher vereinbart, die Zahl der Intensivbetten aufzustocken und gemeinsam dafür Sorge zu tragen, dass ausreichend Material und Personal vorhanden ist, um behandlungsbedürftige Menschen auch angemessen behandeln zu können. Die Bundesregierung hat einen Krisenstab eingerichtet, der regelmäßig tagt und daran mitwirkt, vereinbarte Maßnahmen umzusetzen.

Das Netzwerk von Kompetenzzentren und Spezialkliniken in Deutschland sichert eine Versorgung auf höchstem internationalen Niveau. Deutschland verfügt über ein sehr gutes Krankheitswarn- und Meldesystem und Pandemiepläne.

Das Robert-Koch-Institut arbeitet eng mit verschiedenen Behörden und Einrichtungen zusammen - auf internationaler und nationaler Ebene. Es erfasst kontinuierlich die aktuelle Lage, bewertet alle Informationen, erstellt eine Risikobewertung und veröffentlicht sie auf seiner Internetseite.''',
                          style: TextStyle(fontSize: 14),
                        ),
                      )
                    ],
                  ),
                ),
                Card(
                  child: ExpansionTile(
                    title: Text(
                      "Wie groß ist die Gefahr, sich in Deutschland mit dem Coronavirus anzustecken?",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(20),
                        child: Text(
                          '''Die Gefährdung für die Gesundheit der Bevölkerung in Deutschland wird derzeit insgesamt als hoch eingeschätzt. Diese Gefährdung variiert aber von Region zu Region.  Die Wahrscheinlichkeit für schwere Krankheitsverläufe nimmt mit zunehmendem Alter und bestehenden Vorerkrankungen zu. So lautet die Einschätzung des Robert Koch-Instituts, der zentralen Behörde in Deutschland für Krankheitsüberwachung und -prävention.

Die massiven Anstrengungen auf allen Ebenen des Öffentlichen Gesundheitsdienstes verfolgen bislang das Ziel, einzelne Infektionen in Deutschland so früh wie möglich zu erkennen und die weitere Ausbreitung des Virus dadurch so weit wie möglich zu verzögern. Ziel dieser Strategie ist es, in Deutschland Zeit zu gewinnen, um sich bestmöglich vorzubereiten und mehr über die Eigenschaften des Virus zu erfahren, Risikogruppen zu identifizieren, Schutzmaßnahmen für besonders gefährdete Gruppen vorzubereiten, Behandlungskapazitäten in Kliniken zu erhöhen, antivirale Medikamente und die Impfstoffentwicklung auszuloten.

Die Anstrengungen des Gesundheitswesens sollten durch gesamtgesellschaftliche Anstrengungen ergänzt werden. Wichtig ist es daher,  soziale Kontakte zu reduzieren, um Infektionen im privaten, beruflichen und öffentlichen Bereich zu vermeiden.''',
                          style: TextStyle(fontSize: 14),
                        ),
                      )
                    ],
                  ),
                ),
                Card(
                  child: ExpansionTile(
                    title: Text(
                      "Ist es in Deutschland möglich, ganze Orte abzuriegeln?",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(20),
                        child: Text(
                          '''Das Infektionsschutzgesetz sieht verschiedene Möglichkeiten vor, um ein Infektionsgeschehen zu begrenzen. Zwischen der Absage von Großveranstaltungen, der Schließung von Einrichtungen wie Schulen oder Kitas "bis hin zum Abriegeln ganzer Städte" gebe es zahlreiche Zwischenstufen, erläuterte Gesundheitsminister Spahn. Vorrangig sei, angemessen und verhältnismäßig zu reagieren.

Bisher werden mit Corona Infizierte in Deutschland isoliert und - wenn nötig - behandelt. Ihre Kontaktpersonen werden so weit möglich identifiziert und in häuslicher Quarantäne betreut. Dieses Vorgehen bleibt weiterhin das Ziel der Bundesregierung.''',
                          style: TextStyle(fontSize: 14),
                        ),
                      )
                    ],
                  ),
                ),
                Card(
                  child: ExpansionTile(
                    title: Text(
                      "Wieso wurden vorübergehende Einschränkungen beim grenzüberschreitenden Verkehr eingeführt? ",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(20),
                        child: Text(
                          '''In Abstimmung mit den Nachbarstaaten und den betroffenen Bundesländern wurde seitens der Bundesregierung entschieden, zur weiteren Eindämmung der Infektionsgefahren durch das Coronavirus vorübergehende Grenzkontrollen einzuführen. Die Kontrollen an den Binnengrenzen zu Österreich, der Schweiz, Frankreich, Luxemburg und Dänemark greifen seit dem 16. März 2020. Die Wiedereinführung der vorübergehenden Grenzkontrollen beruht auf der Grundlage von Artikel 28 des Schengener Grenzkodexes. 

''',
                          style: TextStyle(fontSize: 14),
                        ),
                      )
                    ],
                  ),
                ),
                Card(
                  child: ExpansionTile(
                    title: Text(
                      "Wird der grenzüberschreitende Warenverkehr auch unterbrochen und wie ist die Lage für Berufspendler?",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(20),
                        child: Text(
                          '''Der grenzüberschreitende Warenverkehr wird genau wie der grenzüberschreitende Verkehr von Berufspendlern weiterhin gewährleistet. Berufspendlerinnen und Berufspendler sollen schnellstmöglich entsprechende Nachweise der Arbeitgeber mitführen, aus denen sich die Notwendigkeit des Grenzübertritts ergibt.''',
                          style: TextStyle(fontSize: 14),
                        ),
                      )
                    ],
                  ),
                ),
                Card(
                  child: ExpansionTile(
                    title: Text(
                      "Sind in Deutschland Versorgungsengpässe mit Lebensmitteln zu befürchten?",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(20),
                        child: Text(
                          '''Auch wenn in dem ein oder andern Fall mal ein Produkt nicht in den Regalen der Lebensmittelgeschäfte zu finden war: Die Handelsketten versichern, dass dies an noch nicht angepasste logistische Abläufen liegt. Es lägen explizit keine Versorgungsprobleme vor, die Versorgung mit Lebensmitteln ist weiterhin gesichert. Der Handel hat zugesichert, auf die verstärkte Nachfrage zu reagieren und das Sortiment aufzustocken.''',
                          style: TextStyle(fontSize: 14),
                        ),
                      )
                    ],
                  ),
                ),
                Card(
                  child: ExpansionTile(
                    title: Text(
                      "Was gilt für Reisende?",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(20),
                        child: Text(
                          '''Alle Bürgerinnen und Bürger werden gebeten, nicht zwingend notwendige Reisen zu unterlassen. Das Risiko für Reisende, ihre Rückreise aufgrund zunehmender Einschränkungen nicht mehr antreten zu können, ist bei vielen Reisezielen derzeit zu hoch. Deutsche Staatsangehörige und Menschen mit Aufenthaltstiteln in Deutschland können auch weiterhin einreisen.

Wer dennoch ins Ausland reisen muss, sollte sich vorab informieren, welche Einreisesperren oder Sonderkontrollen für das Reiseziel gelten. Das Auswärtige Amt hat eine eigene Seite zum Coronavirus eingerichtet, auf der sich alle wichtigen Informationen finden lassen.

Das Auswärtige Amt gibt darüber hinaus  Reise- und Sicherheitshinweise zu allen Ländern. Wer vereist, kann hier aktuelle und zuverlässige Informationen zur Situation im Zielland finden - Länderinfos genauso wie beispielsweise Sicherheitshinweise und Impfempfehlungen. Diese werden laufend aktualisiert - auch zum Thema gesundheitliche Risiken.

Informationen darüber, welche Rechte Urlauber haben, die ihre Reise nicht antreten oder abbrechen wollen, finden sich auf den Seiten der Verbraucherzentrale und des Europäischen Informationszentrums Deutschland.''',
                          style: TextStyle(fontSize: 14),
                        ),
                      )
                    ],
                  ),
                ),
                Card(
                  child: ExpansionTile(
                    title: Text(
                      "Was müssen Reisende beachten, die aus Coronavirus-Risikogebieten zurückkommen?",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(20),
                        child: Text(
                          '''Wer engen Kontakt mit Menschen hatte, bei denen das neuartige Virus im Labor nachgewiesen wurde, oder wer sich in einem Risikogebiet aufgehalten hat, sollte Kontakte zu anderen Personen vermeiden. Diejenigen sollten sich unverzüglich mit dem zuständigen Gesundheitsamt in Verbindung setzen. Die Kontaktdaten kann man zum Beispiel über eine Datenbank des Robert Koch-Instituts (RKI) abfragen. Zusammen kann dann geklärt werden, was zu tun ist.

Wer medizinische Hilfe benötigt, sollte telefonisch Kontakt mit einer Arztpraxis aufnehmen. Wichtig dabei der Hinweis, dass man in einem Corona-Risikogebiet gewesen war oder Kontakt mit Menschen aus einem Corona-Risikogebiet hatte. Für Ärztinnen und Ärzte stellt das Robert Koch-Institut im Internet Informationen für die Fachöffentlichkeit bereit.''',
                          style: TextStyle(fontSize: 14),
                        ),
                      )
                    ],
                  ),
                ),
                Card(
                  child: ExpansionTile(
                    title: Text(
                      "Wo finde ich weitere aktuelle und zuverlässige Informationen?",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(20),
                        child: Text(
                          '''Das Bundesgesundheitsministerium aktualisiert fortlaufend auf seiner Internetseite die Hinweise zum Coronavirus.

Das Robert Koch-Institut als zuständiges Bundesinstitut stellt auf seiner Internetseite umfassende Informationen zum Coronavirus bereit und berichtet fortlaufend über die Anzahl von Infektionen. Daten und Fakten zur Verbreitung und Epidemiologie, zur Diagnostik, Prävention und Bekämpfung richten sich an eine interessierte Öffentlichkeit und an medizinisches Personal.

Die Bundeszentrale für gesundheitliche Aufklärung beantwortet häufig gestellte Fragen zum Coronavirus, zum Beispiel zum Schutz vor einer Infektionen.

Das Bundesarbeitsministerium gibt Auskunft über arbeitsrechtliche Auswirkungen und Maßnahmen die Ausweitung des Kurzarbeitergeldes.

Auf seiner Internetseite führt das Bundeswirtschaftsministerium die umfangreichen Sofortmaßnahmen auf, die den wirtschaftlichen Folgen des Coronavirus entgegenwirken sollen. 

Reisende finden beim Auswärtigen Amt Hinweise, was sie wegen des Coronavirus beachten sollten. 

Über Fragen der Ein- und Ausreise und die Arbeit der Polizeibehörden klärt das Bundesinnenministerium auf. 

Das Bundesministerium für Ernährung und Landwirtschaft informiert über die gesicherte Versorgung von Lebensmitteln.

Die Weltgesundheitsorganisation (WHO) informiert auf ihren Internetseiten über die weltweite Ausbreitung des Coronavirus (in englischer Sprache).''',
                          style: TextStyle(fontSize: 14),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
