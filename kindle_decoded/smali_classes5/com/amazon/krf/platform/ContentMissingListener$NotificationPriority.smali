.class public final enum Lcom/amazon/krf/platform/ContentMissingListener$NotificationPriority;
.super Ljava/lang/Enum;
.source "ContentMissingListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/krf/platform/ContentMissingListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NotificationPriority"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/krf/platform/ContentMissingListener$NotificationPriority;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/krf/platform/ContentMissingListener$NotificationPriority;

.field public static final enum OPTIONAL:Lcom/amazon/krf/platform/ContentMissingListener$NotificationPriority;

.field public static final enum REQUIRED:Lcom/amazon/krf/platform/ContentMissingListener$NotificationPriority;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 9
    new-instance v0, Lcom/amazon/krf/platform/ContentMissingListener$NotificationPriority;

    const/4 v1, 0x0

    const-string v2, "OPTIONAL"

    invoke-direct {v0, v2, v1}, Lcom/amazon/krf/platform/ContentMissingListener$NotificationPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/ContentMissingListener$NotificationPriority;->OPTIONAL:Lcom/amazon/krf/platform/ContentMissingListener$NotificationPriority;

    .line 13
    new-instance v0, Lcom/amazon/krf/platform/ContentMissingListener$NotificationPriority;

    const/4 v2, 0x1

    const-string v3, "REQUIRED"

    invoke-direct {v0, v3, v2}, Lcom/amazon/krf/platform/ContentMissingListener$NotificationPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/ContentMissingListener$NotificationPriority;->REQUIRED:Lcom/amazon/krf/platform/ContentMissingListener$NotificationPriority;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/krf/platform/ContentMissingListener$NotificationPriority;

    .line 5
    sget-object v4, Lcom/amazon/krf/platform/ContentMissingListener$NotificationPriority;->OPTIONAL:Lcom/amazon/krf/platform/ContentMissingListener$NotificationPriority;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/krf/platform/ContentMissingListener$NotificationPriority;->$VALUES:[Lcom/amazon/krf/platform/ContentMissingListener$NotificationPriority;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static createFromInt(I)Lcom/amazon/krf/platform/ContentMissingListener$NotificationPriority;
    .locals 1

    .line 21
    invoke-static {}, Lcom/amazon/krf/platform/ContentMissingListener$NotificationPriority;->values()[Lcom/amazon/krf/platform/ContentMissingListener$NotificationPriority;

    move-result-object v0

    if-lez p0, :cond_0

    .line 22
    array-length v0, v0

    if-ge p0, v0, :cond_0

    .line 23
    invoke-static {}, Lcom/amazon/krf/platform/ContentMissingListener$NotificationPriority;->values()[Lcom/amazon/krf/platform/ContentMissingListener$NotificationPriority;

    move-result-object v0

    aget-object p0, v0, p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/krf/platform/ContentMissingListener$NotificationPriority;
    .locals 1

    .line 5
    const-class v0, Lcom/amazon/krf/platform/ContentMissingListener$NotificationPriority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/krf/platform/ContentMissingListener$NotificationPriority;

    return-object p0
.end method

.method public static values()[Lcom/amazon/krf/platform/ContentMissingListener$NotificationPriority;
    .locals 1

    .line 5
    sget-object v0, Lcom/amazon/krf/platform/ContentMissingListener$NotificationPriority;->$VALUES:[Lcom/amazon/krf/platform/ContentMissingListener$NotificationPriority;

    invoke-virtual {v0}, [Lcom/amazon/krf/platform/ContentMissingListener$NotificationPriority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/krf/platform/ContentMissingListener$NotificationPriority;

    return-object v0
.end method
