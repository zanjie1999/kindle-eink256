.class public final enum Lcom/amazon/ea/util/SidecarFileUtil$SidecarFileType;
.super Ljava/lang/Enum;
.source "SidecarFileUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/ea/util/SidecarFileUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SidecarFileType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/ea/util/SidecarFileUtil$SidecarFileType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/ea/util/SidecarFileUtil$SidecarFileType;

.field public static final enum END_ACTIONS:Lcom/amazon/ea/util/SidecarFileUtil$SidecarFileType;

.field public static final enum START_ACTIONS:Lcom/amazon/ea/util/SidecarFileUtil$SidecarFileType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 20
    new-instance v0, Lcom/amazon/ea/util/SidecarFileUtil$SidecarFileType;

    const/4 v1, 0x0

    const-string v2, "END_ACTIONS"

    invoke-direct {v0, v2, v1}, Lcom/amazon/ea/util/SidecarFileUtil$SidecarFileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ea/util/SidecarFileUtil$SidecarFileType;->END_ACTIONS:Lcom/amazon/ea/util/SidecarFileUtil$SidecarFileType;

    new-instance v0, Lcom/amazon/ea/util/SidecarFileUtil$SidecarFileType;

    const/4 v2, 0x1

    const-string v3, "START_ACTIONS"

    invoke-direct {v0, v3, v2}, Lcom/amazon/ea/util/SidecarFileUtil$SidecarFileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ea/util/SidecarFileUtil$SidecarFileType;->START_ACTIONS:Lcom/amazon/ea/util/SidecarFileUtil$SidecarFileType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/ea/util/SidecarFileUtil$SidecarFileType;

    .line 19
    sget-object v4, Lcom/amazon/ea/util/SidecarFileUtil$SidecarFileType;->END_ACTIONS:Lcom/amazon/ea/util/SidecarFileUtil$SidecarFileType;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/ea/util/SidecarFileUtil$SidecarFileType;->$VALUES:[Lcom/amazon/ea/util/SidecarFileUtil$SidecarFileType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/ea/util/SidecarFileUtil$SidecarFileType;
    .locals 1

    .line 19
    const-class v0, Lcom/amazon/ea/util/SidecarFileUtil$SidecarFileType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/ea/util/SidecarFileUtil$SidecarFileType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/ea/util/SidecarFileUtil$SidecarFileType;
    .locals 1

    .line 19
    sget-object v0, Lcom/amazon/ea/util/SidecarFileUtil$SidecarFileType;->$VALUES:[Lcom/amazon/ea/util/SidecarFileUtil$SidecarFileType;

    invoke-virtual {v0}, [Lcom/amazon/ea/util/SidecarFileUtil$SidecarFileType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/ea/util/SidecarFileUtil$SidecarFileType;

    return-object v0
.end method
