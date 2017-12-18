FROM ansibleplaybookbundle/apb-base

LABEL "com.redhat.apb.version"="0.1.0"
LABEL "com.redhat.apb.spec"=\
"dmVyc2lvbjogMS4wCm5hbWU6IGlvcy1hcHAtYXBiCmRlc2NyaXB0aW9uOiBTZXRzIHVwIGFuIGlP\
UyBBcHAgcmVwcmVzZW50YXRpb24uCmJpbmRhYmxlOiBGYWxzZQphc3luYzogb3B0aW9uYWwKdGFn\
czogCiAgLSBtb2JpbGUKbWV0YWRhdGE6CiAgZGlzcGxheU5hbWU6IGlPUyBBcHAKICBjb25zb2xl\
Lm9wZW5zaGlmdC5pby9pY29uQ2xhc3M6IGZhIGZhLWlvcwpwbGFuczoKICAtIG5hbWU6IGRlZmF1\
bHQKICAgIGRlc2NyaXB0aW9uOiBTZXRzIHVwIGFuIGlPUyBBcHAgcmVwcmVzZW50YXRpb24uCiAg\
ICBmcmVlOiBUcnVlCiAgICBtZXRhZGF0YToge30KICAgIHBhcmFtZXRlcnM6IAogICAgLSBuYW1l\
OiBhcHBOYW1lCiAgICAgIHJlcXVpcmVkOiBUcnVlCiAgICAgIGRlZmF1bHQ6IG15YXBwCiAgICAg\
IHR5cGU6IHN0cmluZwogICAgICB0aXRsZTogeW91ciBuZXcgYXBwcyBuYW1lCg=="

COPY playbooks /opt/apb/actions
COPY roles /opt/ansible/roles
RUN chmod -R g=u /opt/{ansible,apb}
USER apb
