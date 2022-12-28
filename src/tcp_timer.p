void tcp_fasttimo _P((void));
struct tcpcb * tcp_timers _P((register struct tcpcb*, int));
void tcp_slowtimo _P((void));
void tcp_canceltimers _P((struct tcpcb*));
