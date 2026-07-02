.class public Lcom/amazon/CoralAndroidClient/Exception/CoralException;
.super Lcom/amazon/CoralAndroidClient/Exception/ClientException;
.source "CoralException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/amazon/CoralAndroidClient/Exception/ClientException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/amazon/CoralAndroidClient/Exception/ClientException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/amazon/CoralAndroidClient/Exception/ClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
