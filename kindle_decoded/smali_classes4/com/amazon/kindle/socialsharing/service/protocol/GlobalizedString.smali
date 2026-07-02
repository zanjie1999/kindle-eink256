.class public Lcom/amazon/kindle/socialsharing/service/protocol/GlobalizedString;
.super Ljava/lang/Object;
.source "GlobalizedString.java"


# instance fields
.field private language:Ljava/lang/String;

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/service/protocol/GlobalizedString;->text:Ljava/lang/String;

    return-object v0
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/amazon/kindle/socialsharing/service/protocol/GlobalizedString;->language:Ljava/lang/String;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/amazon/kindle/socialsharing/service/protocol/GlobalizedString;->text:Ljava/lang/String;

    return-void
.end method
