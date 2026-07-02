.class public Lcom/amazon/kindle/tutorial/BaseReaderEventHandler;
.super Ljava/lang/Object;
.source "BaseReaderEventHandler.java"

# interfaces
.implements Lcom/amazon/kindle/tutorial/IReaderEventHandler;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final unimplementedErrorMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    const-class v0, Lcom/amazon/kindle/tutorial/BaseReaderEventHandler;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/tutorial/BaseReaderEventHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/amazon/kindle/tutorial/BaseReaderEventHandler;->unimplementedErrorMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onBookOpenComplete(Lcom/amazon/kindle/model/content/ILocalBookItem;)V
    .locals 1

    .line 27
    sget-object p1, Lcom/amazon/kindle/tutorial/BaseReaderEventHandler;->TAG:Ljava/lang/String;

    iget-object v0, p0, Lcom/amazon/kindle/tutorial/BaseReaderEventHandler;->unimplementedErrorMessage:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onBookOpenStart(Lcom/amazon/kindle/model/content/ILocalBookItem;Z)V
    .locals 0

    .line 22
    sget-object p1, Lcom/amazon/kindle/tutorial/BaseReaderEventHandler;->TAG:Ljava/lang/String;

    iget-object p2, p0, Lcom/amazon/kindle/tutorial/BaseReaderEventHandler;->unimplementedErrorMessage:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onChromeOpen(Lcom/amazon/kindle/model/content/ILocalBookItem;I)V
    .locals 0

    .line 32
    sget-object p1, Lcom/amazon/kindle/tutorial/BaseReaderEventHandler;->TAG:Ljava/lang/String;

    iget-object p2, p0, Lcom/amazon/kindle/tutorial/BaseReaderEventHandler;->unimplementedErrorMessage:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPageTurn(Ljava/lang/String;)V
    .locals 1

    .line 37
    sget-object p1, Lcom/amazon/kindle/tutorial/BaseReaderEventHandler;->TAG:Ljava/lang/String;

    iget-object v0, p0, Lcom/amazon/kindle/tutorial/BaseReaderEventHandler;->unimplementedErrorMessage:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
