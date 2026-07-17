Algoritmo agenda_de_tareas
	Definir opcion, totalTareas Como Entero
	Definir i, j Como Entero
	Definir idBuscar Como Entero
	Definir encontrado Como Logico
	Definir siguienteID Como Entero
	Dimension id[100]
	Dimension titulo[100]
	Dimension descripcion[100]
	Dimension fechaEntrega[100]
	Dimension horaEntrega[100]
	Dimension prioridad[100]
	Dimension estado[100]
	totalTareas <- 0
	siguienteID <- 1
	//-------------------------------------//
	//--|menu_principal_agenda_de_tareas|--//
	//-------------------------------------//
	Repetir
		Escribir "menu principal agenda de tareas"
		Escribir "1) registrar tarea"
		Escribir "2) editar tarea"
		Escribir "3) eliminar tarea"
		Escribir "4) buscar tarea"
		Escribir "5) listar tareas"
		Escribir "6) ver detalles de la tarea"
		Escribir "7) salir"
		Escribir "seleccione una opción:"
		Leer opcion
		Segun opcion Hacer
			//---------------------//
			//--|registrar_tarea|--//
			//---------------------//
			1:
				Escribir "registrar tarea"
				id[totalTareas + 1] <- siguienteID
				siguienteID <- siguienteID + 1
				Escribir "id asignado: ", id[totalTareas + 1]
				Escribir "ingrese el título:"
				Leer titulo[totalTareas + 1]
				Escribir "ingrese la descripción:"
				Leer descripcion[totalTareas + 1]
				Escribir "ingrese la fecha de entrega:"
				Leer fechaEntrega[totalTareas + 1]
				Escribir "ingrese la hora de entrega:"
				Leer horaEntrega[totalTareas + 1]
				Escribir "ingrese la prioridad:"
				Leer prioridad[totalTareas + 1]
				Escribir "ingrese el estado:"
				Leer estado[totalTareas + 1]
				totalTareas <- totalTareas + 1
				Escribir "tarea registrada correctamente."
			//------------------//
			//--|editar_tarea|--//
			//------------------//
			2:
				Escribir "editar tarea"
				Si totalTareas = 0 Entonces
					Escribir "no hay tareas registradas."
				SiNo
					Escribir "datos registrados a editar"
					Para i <- 1 Hasta totalTareas Hacer
						Escribir id[i], " | ", titulo[i], " | ", descripcion[i], " | ", fechaEntrega[i], " | ", horaEntrega[i], " | ", prioridad[i], " | ", estado[i]
					FinPara
					Escribir "ingrese el id de la tarea que desea editar:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalTareas Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "ingrese el nuevo título:"
							Leer titulo[i]
							Escribir "ingrese la nueva descripción:"
							Leer descripcion[i]
							Escribir "ingrese la nueva fecha de entrega:"
							Leer fechaEntrega[i]
							Escribir "ingrese la nueva hora de entrega:"
							Leer horaEntrega[i]
							Escribir "ingrese la nueva prioridad:"
							Leer prioridad[i]
							Escribir "ingrese el nuevo estado:"
							Leer estado[i]
							Escribir "tarea editada correctamente."
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró una tarea con ese id."
					FinSi
				FinSi
			//--------------------//
			//--|eliminar_tarea|--//
			//--------------------//
			3:
				Escribir "eliminar tarea"
				Si totalTareas = 0 Entonces
					Escribir "no hay tareas registradas."
				SiNo
					Escribir "datos registrados a eliminar"
					Para i <- 1 Hasta totalTareas Hacer
						Escribir id[i], " | ", titulo[i], " | ", descripcion[i], " | ", fechaEntrega[i], " | ", horaEntrega[i], " | ", prioridad[i], " | ", estado[i]
					FinPara
					Escribir "ingrese el id de la tarea que desea eliminar:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalTareas Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Si i < totalTareas Entonces
								Para j <- i Hasta totalTareas - 1 Hacer
									id[j] <- id[j + 1]
									titulo[j] <- titulo[j + 1]
									descripcion[j] <- descripcion[j + 1]
									fechaEntrega[j] <- fechaEntrega[j + 1]
									horaEntrega[j] <- horaEntrega[j + 1]
									prioridad[j] <- prioridad[j + 1]
									estado[j] <- estado[j + 1]
								FinPara
							FinSi
							totalTareas <- totalTareas - 1
							Escribir "tarea eliminada correctamente."
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró una tarea con ese id."
					FinSi
				FinSi
			//------------------//
			//--|buscar_tarea|--//
			//------------------//
			4:
				Escribir "buscar tarea"
				Escribir "ingrese el id de la tarea:"
				Leer idBuscar
				Escribir "función de búsqueda disponible."
			//-------------------//
			//--|listar_tareas|--//
			//-------------------//
			5:
				Escribir "listar tareas"
				Si totalTareas = 0 Entonces
					Escribir "no hay tareas registradas."
				SiNo
					Escribir "datos registrados"
					Para i <- 1 Hasta totalTareas Hacer
						Escribir id[i], " | ", titulo[i], " | ", descripcion[i], " | ", fechaEntrega[i], " | ", horaEntrega[i], " | ", prioridad[i], " | ", estado[i]
					FinPara
				FinSi
			//---------------------------//
			//--|ver_detalles_de_tarea|--//
			//---------------------------//
			6:
				Escribir "ver detalles de la tarea"
				Si totalTareas = 0 Entonces
					Escribir "no hay tareas registradas."
				SiNo
					Escribir "datos registrados a detallar"
					Para i <- 1 Hasta totalTareas Hacer
						Escribir id[i], " | ", titulo[i], " | ", descripcion[i], " | ", fechaEntrega[i], " | ", horaEntrega[i], " | ", prioridad[i], " | ", estado[i]
					FinPara
					Escribir "ingrese el id de la tarea:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalTareas Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "detalles de la tarea"
							Escribir "id: ", id[i]
							Escribir "título: ", titulo[i]
							Escribir "descripción: ", descripcion[i]
							Escribir "fecha de entrega: ", fechaEntrega[i]
							Escribir "hora de entrega: ", horaEntrega[i]
							Escribir "prioridad: ", prioridad[i]
							Escribir "estado: ", estado[i]
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró una tarea con ese id."
					FinSi					
				FinSi
			//------------------------------//
			//--|salir_del_menu_principal|--//
			//------------------------------//		
			7:
				Escribir "gracias por utilizar la agenda de tareas."
			De Otro Modo:
				Escribir "opción no válida."
		FinSegun
	Hasta Que opcion = 7
FinAlgoritmo