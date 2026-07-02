.class public Lcom/amazon/device/crashmanager/utils/CrashReportUtil;
.super Ljava/lang/Object;
.source "CrashReportUtil.java"


# static fields
.field private static final log:Lcom/amazon/dp/logger/DPLogger;


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    new-instance v0, Lcom/amazon/dp/logger/DPLogger;

    const-string v1, "CrashReportUtil"

    invoke-direct {v0, v1}, Lcom/amazon/dp/logger/DPLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/device/crashmanager/utils/CrashReportUtil;->log:Lcom/amazon/dp/logger/DPLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-class v0, Lcom/amazon/device/crashmanager/utils/CrashReportUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/crashmanager/utils/CrashReportUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static addCrashDuplicateHeader(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/device/crashmanager/utils/CrashDescriptorDedupeUtil;Ljava/io/Writer;Lcom/amazon/device/utils/det/DetUtil$HeaderProcessor;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 31
    invoke-interface {p2, p0, p1}, Lcom/amazon/device/crashmanager/utils/CrashDescriptorDedupeUtil;->getCount(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 32
    sget-object p2, Lcom/amazon/device/crashmanager/utils/CrashReportUtil;->log:Lcom/amazon/dp/logger/DPLogger;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "Crash Descriptor"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 p1, 0x2

    const-string v2, "De-dupe Count"

    aput-object v2, v0, p1

    const/4 p1, 0x3

    aput-object p0, v0, p1

    const-string p1, "CrashReportUtil"

    const-string v2, "About to add de-dupe count into header"

    invoke-virtual {p2, p1, v2, v0}, Lcom/amazon/dp/logger/DPLoggerBase;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-le p1, v1, :cond_0

    .line 38
    invoke-virtual {p0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CrashDuplicateCount"

    invoke-interface {p4, p1, p0, p3}, Lcom/amazon/device/utils/det/DetUtil$HeaderProcessor;->process(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;)V

    :cond_0
    return-void
.end method
