void tcp_init _P((void));
void tcp_template _P((struct tcpcb));
void tcp_respond _P((struct tcpcb, register struct tcpiphdr, register struct mbuf, tcp_seq, tcp_seq, int));
struct tcpcb * tcp_newtcpcb _P((struct socket));
struct tcpcb * tcp_close _P((register struct tcpcb));
struct tcpcb * tcp_drop _P((register struct tcpcb, int));
void tcp_drain _P((void));
void tcp_sockclosed _P((struct tcpcb));
u_int8_t tcp_tos _P((struct socket));
int tcp_fconnect _P((struct socket));
void tcp_connect _P((struct socket));
int tcp_attach _P((struct socket));
int tcp_emu _P((struct socket, struct mbuf));
int tcp_ctl _P((struct socket));