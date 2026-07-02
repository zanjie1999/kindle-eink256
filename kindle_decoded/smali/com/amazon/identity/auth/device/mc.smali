.class public Lcom/amazon/identity/auth/device/mc;
.super Lcom/amazon/identity/auth/device/mg;
.source "DCP"


# instance fields
.field private final mKey:Ljava/lang/String;

.field private final mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/mg;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/amazon/identity/auth/device/mc;->mKey:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/amazon/identity/auth/device/mc;->mValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method c(Lorg/w3c/dom/Element;)V
    .locals 2

    .line 21
    iget-object v0, p0, Lcom/amazon/identity/auth/device/mc;->mKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/mc;->mValue:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
