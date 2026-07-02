.class public Lcom/amazon/kcp/service/det/klf/KLFKeyValue;
.super Ljava/lang/Object;
.source "KLFKeyValue.java"


# instance fields
.field private key:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/amazon/kcp/service/det/klf/KLFKeyValue;->key:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/amazon/kcp/service/det/klf/KLFKeyValue;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 34
    iget-object v1, p0, Lcom/amazon/kcp/service/det/klf/KLFKeyValue;->key:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/kcp/service/det/klf/KLFKeyValue;->value:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "%s: %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
