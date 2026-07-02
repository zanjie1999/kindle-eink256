.class public Lcom/amazon/kindle/krx/glide/KRXGlideLink;
.super Ljava/lang/Object;
.source "KRXGlideLink.java"


# instance fields
.field private final method:Ljava/lang/String;

.field private final rel:Ljava/lang/String;

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/amazon/kindle/krx/glide/KRXGlideLink;->url:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lcom/amazon/kindle/krx/glide/KRXGlideLink;->rel:Ljava/lang/String;

    .line 54
    iput-object p3, p0, Lcom/amazon/kindle/krx/glide/KRXGlideLink;->method:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMethod()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/amazon/kindle/krx/glide/KRXGlideLink;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getRel()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/amazon/kindle/krx/glide/KRXGlideLink;->rel:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/amazon/kindle/krx/glide/KRXGlideLink;->url:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "KRXGlideLink{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "url=\'"

    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/krx/glide/KRXGlideLink;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", rel=\'"

    .line 92
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kindle/krx/glide/KRXGlideLink;->rel:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", method=\'"

    .line 93
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kindle/krx/glide/KRXGlideLink;->method:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
