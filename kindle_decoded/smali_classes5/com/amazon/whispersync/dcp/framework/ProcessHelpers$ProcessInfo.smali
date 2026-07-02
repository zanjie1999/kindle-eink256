.class public Lcom/amazon/whispersync/dcp/framework/ProcessHelpers$ProcessInfo;
.super Ljava/lang/Object;
.source "ProcessHelpers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/dcp/framework/ProcessHelpers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProcessInfo"
.end annotation


# instance fields
.field public final name:Ljava/lang/String;

.field public final pid:I

.field public final uid:I

.field public final uidName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p3, p0, Lcom/amazon/whispersync/dcp/framework/ProcessHelpers$ProcessInfo;->pid:I

    .line 31
    iput-object p2, p0, Lcom/amazon/whispersync/dcp/framework/ProcessHelpers$ProcessInfo;->uidName:Ljava/lang/String;

    .line 32
    invoke-static {p2}, Landroid/os/Process;->getUidForName(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/amazon/whispersync/dcp/framework/ProcessHelpers$ProcessInfo;->uid:I

    .line 33
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/ProcessHelpers$ProcessInfo;->name:Ljava/lang/String;

    return-void
.end method
