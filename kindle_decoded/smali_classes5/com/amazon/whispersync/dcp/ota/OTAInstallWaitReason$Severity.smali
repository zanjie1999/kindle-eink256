.class public final enum Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason$Severity;
.super Ljava/lang/Enum;
.source "OTAInstallWaitReason.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Severity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason$Severity;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason$Severity;

.field public static final enum SilentInstallBlocker:Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason$Severity;

.field public static final enum VisibleInstallBlocker:Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason$Severity;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 29
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason$Severity;

    const/4 v1, 0x0

    const-string v2, "VisibleInstallBlocker"

    invoke-direct {v0, v2, v1}, Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason$Severity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason$Severity;->VisibleInstallBlocker:Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason$Severity;

    .line 30
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason$Severity;

    const/4 v2, 0x1

    const-string v3, "SilentInstallBlocker"

    invoke-direct {v0, v3, v2}, Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason$Severity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason$Severity;->SilentInstallBlocker:Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason$Severity;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason$Severity;

    .line 27
    sget-object v4, Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason$Severity;->VisibleInstallBlocker:Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason$Severity;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason$Severity;->$VALUES:[Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason$Severity;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason$Severity;
    .locals 1

    .line 27
    const-class v0, Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason$Severity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason$Severity;

    return-object p0
.end method

.method public static values()[Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason$Severity;
    .locals 1

    .line 27
    sget-object v0, Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason$Severity;->$VALUES:[Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason$Severity;

    invoke-virtual {v0}, [Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason$Severity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason$Severity;

    return-object v0
.end method
