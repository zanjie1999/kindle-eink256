.class public Lcom/amazon/identity/auth/accounts/RegisterChildApplicationAction$NotChildApplicationException;
.super Ljava/lang/Exception;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/accounts/RegisterChildApplicationAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotChildApplicationException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method
