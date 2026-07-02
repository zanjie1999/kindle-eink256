.class public final enum Lcom/audible/mobile/domain/Extension;
.super Ljava/lang/Enum;
.source "Extension.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/mobile/domain/Extension;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/mobile/domain/Extension;

.field public static final enum aa:Lcom/audible/mobile/domain/Extension;

.field public static final enum aax:Lcom/audible/mobile/domain/Extension;

.field public static final enum aaxc:Lcom/audible/mobile/domain/Extension;

.field public static final enum m4a:Lcom/audible/mobile/domain/Extension;

.field public static final enum mp4:Lcom/audible/mobile/domain/Extension;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 8
    new-instance v0, Lcom/audible/mobile/domain/Extension;

    const/4 v1, 0x0

    const-string v2, "aax"

    invoke-direct {v0, v2, v1}, Lcom/audible/mobile/domain/Extension;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/domain/Extension;->aax:Lcom/audible/mobile/domain/Extension;

    new-instance v0, Lcom/audible/mobile/domain/Extension;

    const/4 v2, 0x1

    const-string v3, "aaxc"

    invoke-direct {v0, v3, v2}, Lcom/audible/mobile/domain/Extension;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/domain/Extension;->aaxc:Lcom/audible/mobile/domain/Extension;

    new-instance v0, Lcom/audible/mobile/domain/Extension;

    const/4 v3, 0x2

    const-string v4, "aa"

    invoke-direct {v0, v4, v3}, Lcom/audible/mobile/domain/Extension;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/domain/Extension;->aa:Lcom/audible/mobile/domain/Extension;

    new-instance v0, Lcom/audible/mobile/domain/Extension;

    const/4 v4, 0x3

    const-string v5, "m4a"

    invoke-direct {v0, v5, v4}, Lcom/audible/mobile/domain/Extension;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/domain/Extension;->m4a:Lcom/audible/mobile/domain/Extension;

    new-instance v0, Lcom/audible/mobile/domain/Extension;

    const/4 v5, 0x4

    const-string v6, "mp4"

    invoke-direct {v0, v6, v5}, Lcom/audible/mobile/domain/Extension;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/domain/Extension;->mp4:Lcom/audible/mobile/domain/Extension;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/audible/mobile/domain/Extension;

    .line 6
    sget-object v7, Lcom/audible/mobile/domain/Extension;->aax:Lcom/audible/mobile/domain/Extension;

    aput-object v7, v6, v1

    sget-object v1, Lcom/audible/mobile/domain/Extension;->aaxc:Lcom/audible/mobile/domain/Extension;

    aput-object v1, v6, v2

    sget-object v1, Lcom/audible/mobile/domain/Extension;->aa:Lcom/audible/mobile/domain/Extension;

    aput-object v1, v6, v3

    sget-object v1, Lcom/audible/mobile/domain/Extension;->m4a:Lcom/audible/mobile/domain/Extension;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/audible/mobile/domain/Extension;->$VALUES:[Lcom/audible/mobile/domain/Extension;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/mobile/domain/Extension;
    .locals 1

    .line 6
    const-class v0, Lcom/audible/mobile/domain/Extension;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/mobile/domain/Extension;

    return-object p0
.end method

.method public static values()[Lcom/audible/mobile/domain/Extension;
    .locals 1

    .line 6
    sget-object v0, Lcom/audible/mobile/domain/Extension;->$VALUES:[Lcom/audible/mobile/domain/Extension;

    invoke-virtual {v0}, [Lcom/audible/mobile/domain/Extension;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/mobile/domain/Extension;

    return-object v0
.end method
