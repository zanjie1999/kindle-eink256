.class public Lcom/amazon/identity/kcpsdk/auth/ParseErrorException;
.super Ljava/lang/Exception;
.source "DCP"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final mError:Lcom/amazon/identity/kcpsdk/common/ParseError;


# direct methods
.method public constructor <init>(Lcom/amazon/identity/kcpsdk/common/ParseError;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/amazon/identity/kcpsdk/auth/ParseErrorException;->mError:Lcom/amazon/identity/kcpsdk/common/ParseError;

    return-void
.end method
