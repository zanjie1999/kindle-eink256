.class public final enum Lcom/amazon/kindle/krx/plugin/Plugin$UserRole;
.super Ljava/lang/Enum;
.source "Plugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/krx/plugin/Plugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UserRole"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/krx/plugin/Plugin$UserRole;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/krx/plugin/Plugin$UserRole;

.field public static final enum adult:Lcom/amazon/kindle/krx/plugin/Plugin$UserRole;

.field public static final enum both:Lcom/amazon/kindle/krx/plugin/Plugin$UserRole;

.field public static final enum child:Lcom/amazon/kindle/krx/plugin/Plugin$UserRole;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 107
    new-instance v0, Lcom/amazon/kindle/krx/plugin/Plugin$UserRole;

    const/4 v1, 0x0

    const-string v2, "adult"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/krx/plugin/Plugin$UserRole;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/plugin/Plugin$UserRole;->adult:Lcom/amazon/kindle/krx/plugin/Plugin$UserRole;

    new-instance v0, Lcom/amazon/kindle/krx/plugin/Plugin$UserRole;

    const/4 v2, 0x1

    const-string v3, "child"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/krx/plugin/Plugin$UserRole;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/plugin/Plugin$UserRole;->child:Lcom/amazon/kindle/krx/plugin/Plugin$UserRole;

    new-instance v0, Lcom/amazon/kindle/krx/plugin/Plugin$UserRole;

    const/4 v3, 0x2

    const-string v4, "both"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kindle/krx/plugin/Plugin$UserRole;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/plugin/Plugin$UserRole;->both:Lcom/amazon/kindle/krx/plugin/Plugin$UserRole;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/kindle/krx/plugin/Plugin$UserRole;

    .line 105
    sget-object v5, Lcom/amazon/kindle/krx/plugin/Plugin$UserRole;->adult:Lcom/amazon/kindle/krx/plugin/Plugin$UserRole;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/kindle/krx/plugin/Plugin$UserRole;->child:Lcom/amazon/kindle/krx/plugin/Plugin$UserRole;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/kindle/krx/plugin/Plugin$UserRole;->$VALUES:[Lcom/amazon/kindle/krx/plugin/Plugin$UserRole;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 105
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/krx/plugin/Plugin$UserRole;
    .locals 1

    .line 105
    const-class v0, Lcom/amazon/kindle/krx/plugin/Plugin$UserRole;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/krx/plugin/Plugin$UserRole;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/krx/plugin/Plugin$UserRole;
    .locals 1

    .line 105
    sget-object v0, Lcom/amazon/kindle/krx/plugin/Plugin$UserRole;->$VALUES:[Lcom/amazon/kindle/krx/plugin/Plugin$UserRole;

    invoke-virtual {v0}, [Lcom/amazon/kindle/krx/plugin/Plugin$UserRole;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/krx/plugin/Plugin$UserRole;

    return-object v0
.end method
