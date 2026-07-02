.class public Lcom/amazon/identity/auth/device/md;
.super Lcom/amazon/identity/auth/device/mg;
.source "DCP"


# instance fields
.field private final uO:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/mg;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/amazon/identity/auth/device/md;->uO:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method c(Lorg/w3c/dom/Element;)V
    .locals 2

    .line 21
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/amazon/identity/auth/device/md;->uO:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createCDATASection(Ljava/lang/String;)Lorg/w3c/dom/CDATASection;

    move-result-object v0

    .line 23
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method
