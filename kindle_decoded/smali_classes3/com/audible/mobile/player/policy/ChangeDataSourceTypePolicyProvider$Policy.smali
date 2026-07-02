.class public final enum Lcom/audible/mobile/player/policy/ChangeDataSourceTypePolicyProvider$Policy;
.super Ljava/lang/Enum;
.source "ChangeDataSourceTypePolicyProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/player/policy/ChangeDataSourceTypePolicyProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Policy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/mobile/player/policy/ChangeDataSourceTypePolicyProvider$Policy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/mobile/player/policy/ChangeDataSourceTypePolicyProvider$Policy;

.field public static final enum Default:Lcom/audible/mobile/player/policy/ChangeDataSourceTypePolicyProvider$Policy;

.field public static final enum SeamlessContinuation:Lcom/audible/mobile/player/policy/ChangeDataSourceTypePolicyProvider$Policy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 25
    new-instance v0, Lcom/audible/mobile/player/policy/ChangeDataSourceTypePolicyProvider$Policy;

    const/4 v1, 0x0

    const-string v2, "SeamlessContinuation"

    invoke-direct {v0, v2, v1}, Lcom/audible/mobile/player/policy/ChangeDataSourceTypePolicyProvider$Policy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/player/policy/ChangeDataSourceTypePolicyProvider$Policy;->SeamlessContinuation:Lcom/audible/mobile/player/policy/ChangeDataSourceTypePolicyProvider$Policy;

    .line 31
    new-instance v0, Lcom/audible/mobile/player/policy/ChangeDataSourceTypePolicyProvider$Policy;

    const/4 v2, 0x1

    const-string v3, "Default"

    invoke-direct {v0, v3, v2}, Lcom/audible/mobile/player/policy/ChangeDataSourceTypePolicyProvider$Policy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/player/policy/ChangeDataSourceTypePolicyProvider$Policy;->Default:Lcom/audible/mobile/player/policy/ChangeDataSourceTypePolicyProvider$Policy;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/audible/mobile/player/policy/ChangeDataSourceTypePolicyProvider$Policy;

    .line 20
    sget-object v4, Lcom/audible/mobile/player/policy/ChangeDataSourceTypePolicyProvider$Policy;->SeamlessContinuation:Lcom/audible/mobile/player/policy/ChangeDataSourceTypePolicyProvider$Policy;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/audible/mobile/player/policy/ChangeDataSourceTypePolicyProvider$Policy;->$VALUES:[Lcom/audible/mobile/player/policy/ChangeDataSourceTypePolicyProvider$Policy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/mobile/player/policy/ChangeDataSourceTypePolicyProvider$Policy;
    .locals 1

    .line 20
    const-class v0, Lcom/audible/mobile/player/policy/ChangeDataSourceTypePolicyProvider$Policy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/mobile/player/policy/ChangeDataSourceTypePolicyProvider$Policy;

    return-object p0
.end method

.method public static values()[Lcom/audible/mobile/player/policy/ChangeDataSourceTypePolicyProvider$Policy;
    .locals 1

    .line 20
    sget-object v0, Lcom/audible/mobile/player/policy/ChangeDataSourceTypePolicyProvider$Policy;->$VALUES:[Lcom/audible/mobile/player/policy/ChangeDataSourceTypePolicyProvider$Policy;

    invoke-virtual {v0}, [Lcom/audible/mobile/player/policy/ChangeDataSourceTypePolicyProvider$Policy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/mobile/player/policy/ChangeDataSourceTypePolicyProvider$Policy;

    return-object v0
.end method
