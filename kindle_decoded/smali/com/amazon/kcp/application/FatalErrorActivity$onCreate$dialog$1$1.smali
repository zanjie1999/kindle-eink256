.class final Lcom/amazon/kcp/application/FatalErrorActivity$onCreate$dialog$1$1;
.super Ljava/lang/Object;
.source "FatalErrorActivity.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/application/FatalErrorActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/application/FatalErrorActivity$onCreate$dialog$1$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazon/kcp/application/FatalErrorActivity$onCreate$dialog$1$1;

    invoke-direct {v0}, Lcom/amazon/kcp/application/FatalErrorActivity$onCreate$dialog$1$1;-><init>()V

    sput-object v0, Lcom/amazon/kcp/application/FatalErrorActivity$onCreate$dialog$1$1;->INSTANCE:Lcom/amazon/kcp/application/FatalErrorActivity$onCreate$dialog$1$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, 0x1

    .line 35
    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "System.exit returned normally, while it was supposed to halt JVM."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
