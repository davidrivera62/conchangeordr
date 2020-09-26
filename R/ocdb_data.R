ocdb_data <- function(x, log_issues = FALSE) {

  message('Initiating ocdb_sector_data class.
\n\nExpects a data.frame with 21 columns, where
measure is one of GVA, exports, or enterprises. The data.frame should include
historical data, which is used for checks on the quality of this year\'s data,
and for producing tables and plots. More information on the format expected by
this class is given by ?ocdb_data().')

  message('\n*** Running integrity checks on input dataframe (x):')
  message('\nChecking input is properly formatted...')
  message('Checking x is a data.frame...')
  if (!is.data.frame(x)) stop("x must be a data.frame")

  message('Checking x has correct columns...')
  if (length(colnames(x)) != 21) stop("x must have 21 columns")

  message('Checking x contains a NUM_OC column...')
  if (!'NUM_OC' %in% colnames(x)) stop("x must contain NUM_OC column")

  message('Checking x contains a ANALISTA_RESPONSANBLE_CIERRE_TAREA column...')
  if (!'ANALISTA_RESPONSANBLE_CIERRE_TAREA' %in% colnames(x)) stop("x must contain ANALISTA_RESPONSANBLE_CIERRE_TAREA column")

  message('Checking x contains a ESTADO_TAREA column...')
  if (!'ESTADO_TAREA' %in% colnames(x)) stop("x must contain ESTADO_TAREA column")

  message('Checking x contains a NOMBRE_QUIEN_SOLICITA column...')
  if (!'NOMBRE_QUIEN_SOLICITA' %in% colnames(x)) stop("x must contain NOMBRE_QUIEN_SOLICITA column")

  message('Checking x contains a APELLIDO_QUIEN_SOLICITA column...')
  if (!'APELLIDO_QUIEN_SOLICITA' %in% colnames(x)) stop("x must contain APELLIDO_QUIEN_SOLICITA column")

  message('Checking x contains a CATEGORIA_OC column...')
  if (!'CATEGORIA_OC' %in% colnames(x)) stop("x must contain CATEGORIA_OC column")

  message('Checking x contains a FECHA_INICIO_TAREA column...')
  if (!'FECHA_INICIO_TAREA' %in% colnames(x)) stop("x must contain FECHA_INICIO_TAREA column")

  message('Checking x contains a FECHA_CIERRE_TAREA column...')
  if (!'FECHA_CIERRE_TAREA' %in% colnames(x)) stop("x must contain FECHA_CIERRE_TAREA column")

  message('Checking x contains a DIFERENCIA_MINUTOS_CERRADO_TAREA column...')
  if (!'DIFERENCIA_MINUTOS_CERRADO_TAREA' %in% colnames(x)) stop("x must contain DIFERENCIA_MINUTOS_CERRADO_TAREA column")

  message('Checking x contains a DIFERENCIA_MINUTOS_CERRADO_TAREA column...')
  if (!'DIFERENCIA_MINUTOS_CERRADO_TAREA' %in% colnames(x)) stop("x must contain DIFERENCIA_MINUTOS_CERRADO_TAREA column")

  message('Checking x contains a DIFERENCIA_HORAS_CERRADO_TAREA column...')
  if (!'DIFERENCIA_HORAS_CERRADO_TAREA' %in% colnames(x)) stop("x must contain DIFERENCIA_HORAS_CERRADO_TAREA column")

  message('Checking x contains a COMENTARIO_ANALISTA_TAREA_ column...')
  if (!'COMENTARIO_ANALISTA_TAREA_' %in% colnames(x)) stop("x must contain COMENTARIO_ANALISTA_TAREA_ column")

  message('Checking x contains a FECHA_INICIO_TAREA_PROGRAMADA column...')
  if (!'FECHA_INICIO_TAREA_PROGRAMADA' %in% colnames(x)) stop("x must contain FECHA_INICIO_TAREA_PROGRAMADA column")

  message('Checking x contains a DIFERENCIA_MINUTOS_CERRADO_TAREA_PROGRAMADA column...')
  if (!'DIFERENCIA_MINUTOS_CERRADO_TAREA_PROGRAMADA' %in% colnames(x)) stop("x must contain DIFERENCIA_MINUTOS_CERRADO_TAREA_PROGRAMADA column")

  message('Checking x contains a ANS column...')
  if (!'ANS' %in% colnames(x)) stop("x must contain ANS column")

  message('Checking x contains a SEC_TAREA column...')
  if (!'SEC_TAREA' %in% colnames(x)) stop("x must contain SEC_TAREA column")

  message('Checking x contains a ANS2 column...')
  if (!'ANS2' %in% colnames(x)) stop("x must contain ANS2 column")

  message('Checking x contains a MES column...')
  if (!'MES' %in% colnames(x)) stop("x must contain MES column")

  message('Checking x contains a ANS2 column...')
  if (!'ANS2' %in% colnames(x)) stop("x must contain ANS2 column")

  message('Checking x contains a MES column...')
  if (!'MES' %in% colnames(x)) stop("x must contain MES column")

  message('Checking x contains a NEGOCIO column...')
  if (!'NEGOCIO' %in% colnames(x)) stop("x must contain NEGOCIO column")

  message('Checking x contains a SLA_EVALUADO column...')
  if (!'SLA_EVALUADO' %in% colnames(x)) stop("x must contain SLA_EVALUADO column")

  message('Checking x contains a OC_ENTREGA_PLATAFORMA column...')
  if (!'OC_ENTREGA_PLATAFORMA' %in% colnames(x)) stop("x must contain OC_ENTREGA_PLATAFORMA column")



  # Define the class here ----

  structure(
    list(
      df = x,
      colnames = colnames(x)

    ),
    class = "ocdb_data")

  }
