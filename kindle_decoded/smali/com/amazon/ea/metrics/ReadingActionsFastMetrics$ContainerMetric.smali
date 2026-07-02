.class Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerMetric;
.super Ljava/lang/Object;
.source "ReadingActionsFastMetrics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ContainerMetric"
.end annotation


# instance fields
.field private final containerUUID:Ljava/lang/String;

.field private final deviceStatus:Lcom/amazon/ea/metrics/DeviceStatus;

.field private final endTime:J

.field private final entryPoint:Ljava/lang/String;

.field private final readingAction:Ljava/lang/String;

.field private final readingActionContainer:Ljava/lang/String;

.field private final startTime:J


# direct methods
.method constructor <init>(Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerMetric;J)V
    .locals 2

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iget-object v0, p1, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerMetric;->readingAction:Ljava/lang/String;

    iput-object v0, p0, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerMetric;->readingAction:Ljava/lang/String;

    .line 148
    iget-object v0, p1, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerMetric;->readingActionContainer:Ljava/lang/String;

    iput-object v0, p0, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerMetric;->readingActionContainer:Ljava/lang/String;

    .line 149
    iget-object v0, p1, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerMetric;->containerUUID:Ljava/lang/String;

    iput-object v0, p0, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerMetric;->containerUUID:Ljava/lang/String;

    .line 150
    iget-wide v0, p1, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerMetric;->startTime:J

    iput-wide v0, p0, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerMetric;->startTime:J

    .line 151
    iget-object v0, p1, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerMetric;->entryPoint:Ljava/lang/String;

    iput-object v0, p0, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerMetric;->entryPoint:Ljava/lang/String;

    .line 152
    iget-object p1, p1, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerMetric;->deviceStatus:Lcom/amazon/ea/metrics/DeviceStatus;

    iput-object p1, p0, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerMetric;->deviceStatus:Lcom/amazon/ea/metrics/DeviceStatus;

    .line 153
    iput-wide p2, p0, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerMetric;->endTime:J

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/amazon/ea/metrics/DeviceStatus;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-wide/16 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 128
    invoke-direct/range {v0 .. v6}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerMetric;-><init>(Ljava/lang/String;Lcom/amazon/ea/metrics/DeviceStatus;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/amazon/ea/metrics/DeviceStatus;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-object p3, p0, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerMetric;->readingAction:Ljava/lang/String;

    .line 138
    iput-object p4, p0, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerMetric;->readingActionContainer:Ljava/lang/String;

    .line 139
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerMetric;->containerUUID:Ljava/lang/String;

    .line 140
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    iput-wide p3, p0, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerMetric;->startTime:J

    .line 141
    iput-object p1, p0, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerMetric;->entryPoint:Ljava/lang/String;

    .line 142
    iput-object p2, p0, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerMetric;->deviceStatus:Lcom/amazon/ea/metrics/DeviceStatus;

    .line 143
    iput-wide p5, p0, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerMetric;->endTime:J

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerMetric;)Ljava/lang/String;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerMetric;->containerUUID:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerMetric;)J
    .locals 2

    .line 112
    iget-wide v0, p0, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerMetric;->startTime:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerMetric;)J
    .locals 2

    .line 112
    iget-wide v0, p0, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerMetric;->endTime:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerMetric;)Ljava/lang/String;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerMetric;->readingAction:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerMetric;)Ljava/lang/String;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerMetric;->readingActionContainer:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerMetric;)Ljava/lang/String;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerMetric;->entryPoint:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerMetric;)Lcom/amazon/ea/metrics/DeviceStatus;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerMetric;->deviceStatus:Lcom/amazon/ea/metrics/DeviceStatus;

    return-object p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ContainerMetric{containerUUID=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerMetric;->containerUUID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", startTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerMetric;->startTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", entryPoint=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerMetric;->entryPoint:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", deviceStatus=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerMetric;->deviceStatus:Lcom/amazon/ea/metrics/DeviceStatus;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", readingAction=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerMetric;->readingAction:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", readingActionContainer=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerMetric;->readingActionContainer:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", endTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerMetric;->endTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
