.class public final enum Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics$DirectoryAccess;
.super Ljava/lang/Enum;
.source "RecordDirectoryPermissionMetrics.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DirectoryAccess"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics$DirectoryAccess;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics$DirectoryAccess;

.field public static final enum ALLOW:Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics$DirectoryAccess;

.field public static final enum DENY:Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics$DirectoryAccess;

.field public static final enum NA:Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics$DirectoryAccess;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics$DirectoryAccess;

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics$DirectoryAccess;

    const/4 v2, 0x0

    const-string v3, "ALLOW"

    const-string v4, "allow"

    .line 23
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics$DirectoryAccess;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics$DirectoryAccess;->ALLOW:Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics$DirectoryAccess;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics$DirectoryAccess;

    const/4 v2, 0x1

    const-string v3, "DENY"

    const-string v4, "deny"

    .line 24
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics$DirectoryAccess;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics$DirectoryAccess;->DENY:Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics$DirectoryAccess;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics$DirectoryAccess;

    const-string v2, "NA"

    const/4 v3, 0x2

    .line 25
    invoke-direct {v1, v2, v3, v2}, Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics$DirectoryAccess;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics$DirectoryAccess;->NA:Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics$DirectoryAccess;

    aput-object v1, v0, v3

    sput-object v0, Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics$DirectoryAccess;->$VALUES:[Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics$DirectoryAccess;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics$DirectoryAccess;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics$DirectoryAccess;
    .locals 1

    const-class v0, Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics$DirectoryAccess;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics$DirectoryAccess;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics$DirectoryAccess;
    .locals 1

    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics$DirectoryAccess;->$VALUES:[Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics$DirectoryAccess;

    invoke-virtual {v0}, [Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics$DirectoryAccess;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics$DirectoryAccess;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics$DirectoryAccess;->value:Ljava/lang/String;

    return-object v0
.end method
