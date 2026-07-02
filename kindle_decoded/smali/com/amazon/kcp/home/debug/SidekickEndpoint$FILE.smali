.class final Lcom/amazon/kcp/home/debug/SidekickEndpoint$FILE;
.super Lcom/amazon/kcp/home/debug/SidekickEndpoint;
.source "SidekickSettings.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/home/debug/SidekickEndpoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FILE"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const-string v0, "http"

    const/4 v1, 0x0

    .line 44
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/amazon/kcp/home/debug/SidekickEndpoint;-><init>(Ljava/lang/String;ILjava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public getAuthority(Lcom/amazon/kcp/application/Marketplace;)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "marketplace"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/sk-endpoint"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 49
    const-class v0, Lcom/amazon/kcp/home/debug/SidekickEndpoint;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Sidekick file does not exist, using Prod endpoint"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p1}, Lcom/amazon/kcp/application/Marketplace;->getDomain()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "marketplace.domain"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 52
    :cond_0
    sget-object p1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1}, Ljava/nio/charset/Charset;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/apache/commons/io/FileUtils;->readFileToString(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->strip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "StringUtils.strip(FileUt\u2026arsets.UTF_8.toString()))"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
