.class public Lcom/amazon/kcp/library/models/internal/APFMetadataInfo$APFAuditInfo;
.super Ljava/lang/Object;
.source "APFMetadataInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/models/internal/APFMetadataInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "APFAuditInfo"
.end annotation


# instance fields
.field private beginStreamDate:J

.field private context:Ljava/lang/String;

.field private createdBy:Ljava/lang/String;

.field private endStreamDate:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/amazon/kcp/library/models/internal/APFMetadataInfo$APFAuditInfo;->context:Ljava/lang/String;

    .line 73
    iput-object p2, p0, Lcom/amazon/kcp/library/models/internal/APFMetadataInfo$APFAuditInfo;->createdBy:Ljava/lang/String;

    .line 74
    iput-wide p3, p0, Lcom/amazon/kcp/library/models/internal/APFMetadataInfo$APFAuditInfo;->beginStreamDate:J

    .line 75
    iput-wide p5, p0, Lcom/amazon/kcp/library/models/internal/APFMetadataInfo$APFAuditInfo;->endStreamDate:J

    return-void
.end method
