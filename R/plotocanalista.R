library(tidyr)
library(dplyr)
library(ggplot2)
library(lubridate)

plot.oc.analista <- function(OC, FechaInicio, FechaFin){

  ocdb %>%
    filter(FECHA_INICIO_TAREA > FechaInicio & FECHA_CIERRE_TAREA < FechaFin) %>%
    filter(ANALISTA_RESPONSANBLE_CIERRE_TAREA != 'David Rivera' | ANALISTA_RESPONSANBLE_CIERRE_TAREA != 'Jaime Gomez' | ANALISTA_RESPONSANBLE_CIERRE_TAREA != 'Yonny Escobar' ) %>%
    select(ANALISTA_RESPONSANBLE_CIERRE_TAREA,NUM_OC,ESTADO_TAREA) %>%
    group_by(ANALISTA_RESPONSANBLE_CIERRE_TAREA,ESTADO_TAREA) %>%
    summarise(Total = length(!is.na(NUM_OC)))%>%
    ggplot(aes(fill=ESTADO_TAREA,
               y=Total,
               x=reorder(ANALISTA_RESPONSANBLE_CIERRE_TAREA, Total),
               label=Total))+
    geom_bar(position = "stack", stat = "identity")+
    scale_fill_brewer(palette = "Paired")+
    geom_text(size = 3, vjust = 0.5, hjust = -0.5,
              position = position_stack())+
    xlab('Analista')+
    ylab('Cantidad OC')+
    guides(fill=guide_legend(title="Estado Tarea")) +
    theme(legend.position="bottom") +
    coord_flip()+
    ggtitle("Atención de tareas")

}
