.class public final Lcom/amazon/identity/auth/device/fm$b;
.super Lcom/amazon/identity/auth/device/fm;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/fm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method private constructor <init>(Lcom/amazon/identity/auth/device/ed;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 0

    .line 59
    invoke-direct/range {p0 .. p6}, Lcom/amazon/identity/auth/device/fm;-><init>(Lcom/amazon/identity/auth/device/ed;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V

    return-void
.end method

.method public static b(Lcom/amazon/identity/auth/device/ed;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)Lcom/amazon/identity/auth/device/fm$b;
    .locals 8

    .line 69
    new-instance v7, Lcom/amazon/identity/auth/device/fm$b;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/amazon/identity/auth/device/fm$b;-><init>(Lcom/amazon/identity/auth/device/ed;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V

    return-object v7
.end method


# virtual methods
.method protected getPath()Ljava/lang/String;
    .locals 1

    const-string v0, "/auth/startActorCreationAndEnrollment"

    return-object v0
.end method
