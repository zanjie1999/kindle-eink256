.class public Lcom/amazon/identity/auth/device/bn$a;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/bn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final hq:Ljava/lang/String;

.field public final hr:Ljava/lang/String;

.field public final hs:J

.field public final ht:J


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 0

    .line 789
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 790
    iput-object p1, p0, Lcom/amazon/identity/auth/device/bn$a;->hq:Ljava/lang/String;

    .line 791
    iput-object p2, p0, Lcom/amazon/identity/auth/device/bn$a;->hr:Ljava/lang/String;

    .line 792
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p3, p1

    iput-wide p3, p0, Lcom/amazon/identity/auth/device/bn$a;->hs:J

    .line 793
    iput-wide p5, p0, Lcom/amazon/identity/auth/device/bn$a;->ht:J

    return-void
.end method
