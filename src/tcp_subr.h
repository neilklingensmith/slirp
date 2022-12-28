

#ifndef __TCP_SUBR_H
#define __TCP_SUBR_H

void tcp_init (void);
void tcp_template (struct tcpcb *);
void tcp_respond (struct tcpcb *, register struct tcpiphdr *, register struct mbuf *, tcp_seq, tcp_seq, int);
struct tcpcb * tcp_newtcpcb (struct socket *);
struct tcpcb * tcp_close (register struct tcpcb *);
struct tcpcb * tcp_drop (register struct tcpcb *, int);
void tcp_drain (void);
void tcp_sockclosed (struct tcpcb *);
u_int8_t tcp_tos (struct socket *);
int tcp_fconnect (struct socket *);
void tcp_connect (struct socket *);
int tcp_attach (struct socket *);
int tcp_emu (struct socket *, struct mbuf *);
int tcp_ctl (struct socket *);

#endif
