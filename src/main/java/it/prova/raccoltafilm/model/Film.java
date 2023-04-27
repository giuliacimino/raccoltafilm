package it.prova.raccoltafilm.model;

import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "film")
public class Film {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private Long id;
	@Column(name = "titolo")
	private String titolo;
	@Column(name = "genere")
	private String genere;
	@Column(name = "dataPubblicazione")
	private LocalDate dataPubblicazione;
	@Column(name = "minutiDurata")
	private Integer minutiDurata;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "regista_id",nullable = false)
	private Regista regista;

	public Film() {
	}

	public Film(String titolo, String genere, LocalDate dataPubblicazione, Integer minutiDurata, Regista regista) {
		this.titolo = titolo;
		this.genere = genere;
		this.dataPubblicazione = dataPubblicazione;
		this.minutiDurata = minutiDurata;
		this.regista = regista;
	}
	
	public Film(String titolo, String genere) {
		this.titolo = titolo;
		this.genere = genere;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getTitolo() {
		return titolo;
	}

	public void setTitolo(String titolo) {
		this.titolo = titolo;
	}

	public String getGenere() {
		return genere;
	}

	public void setGenere(String genere) {
		this.genere = genere;
	}

	public LocalDate getDataPubblicazione() {
		return dataPubblicazione;
	}

	public void setDataPubblicazione(LocalDate dataPubblicazione) {
		this.dataPubblicazione = dataPubblicazione;
	}

	public Integer getMinutiDurata() {
		return minutiDurata;
	}

	public void setMinutiDurata(Integer minutiDurata) {
		this.minutiDurata = minutiDurata;
	}

	public Regista getRegista() {
		return regista;
	}

	public void setRegista(Regista regista) {
		this.regista = regista;
	}

}
