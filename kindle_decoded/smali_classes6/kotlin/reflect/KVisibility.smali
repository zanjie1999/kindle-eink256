.class public final enum Lkotlin/reflect/KVisibility;
.super Ljava/lang/Enum;
.source "KVisibility.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlin/reflect/KVisibility;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lkotlin/reflect/KVisibility;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Lkotlin/reflect/KVisibility;

    new-instance v1, Lkotlin/reflect/KVisibility;

    const/4 v2, 0x0

    const-string v3, "PUBLIC"

    invoke-direct {v1, v3, v2}, Lkotlin/reflect/KVisibility;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/reflect/KVisibility;

    const/4 v2, 0x1

    const-string v3, "PROTECTED"

    invoke-direct {v1, v3, v2}, Lkotlin/reflect/KVisibility;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/reflect/KVisibility;

    const/4 v2, 0x2

    const-string v3, "INTERNAL"

    invoke-direct {v1, v3, v2}, Lkotlin/reflect/KVisibility;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/reflect/KVisibility;

    const/4 v2, 0x3

    const-string v3, "PRIVATE"

    invoke-direct {v1, v3, v2}, Lkotlin/reflect/KVisibility;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v2

    sput-object v0, Lkotlin/reflect/KVisibility;->$VALUES:[Lkotlin/reflect/KVisibility;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/reflect/KVisibility;
    .locals 1

    const-class v0, Lkotlin/reflect/KVisibility;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/KVisibility;

    return-object p0
.end method

.method public static values()[Lkotlin/reflect/KVisibility;
    .locals 1

    sget-object v0, Lkotlin/reflect/KVisibility;->$VALUES:[Lkotlin/reflect/KVisibility;

    invoke-virtual {v0}, [Lkotlin/reflect/KVisibility;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/reflect/KVisibility;

    return-object v0
.end method
