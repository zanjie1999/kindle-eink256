.class public Lcom/amazon/identity/auth/device/bo$a;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/bo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public hq:Ljava/lang/String;

.field public hr:Ljava/lang/String;

.field public hu:J

.field public hv:J

.field public hw:J


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-object p1, p0, Lcom/amazon/identity/auth/device/bo$a;->hq:Ljava/lang/String;

    .line 138
    iput-object p2, p0, Lcom/amazon/identity/auth/device/bo$a;->hr:Ljava/lang/String;

    .line 139
    invoke-static {p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    const-wide/16 v0, 0x3e8

    mul-long p1, p1, v0

    iput-wide p1, p0, Lcom/amazon/identity/auth/device/bo$a;->hu:J

    .line 140
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/amazon/identity/auth/device/bo$a;->hu:J

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/amazon/identity/auth/device/bo$a;->hv:J

    .line 141
    invoke-static {p4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/amazon/identity/auth/device/bo$a;->hw:J

    return-void
.end method
