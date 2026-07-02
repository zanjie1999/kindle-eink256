.class public final enum Landroidx/work/ExistingWorkPolicy;
.super Ljava/lang/Enum;
.source "ExistingWorkPolicy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/work/ExistingWorkPolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/work/ExistingWorkPolicy;

.field public static final enum APPEND:Landroidx/work/ExistingWorkPolicy;

.field public static final enum APPEND_OR_REPLACE:Landroidx/work/ExistingWorkPolicy;

.field public static final enum KEEP:Landroidx/work/ExistingWorkPolicy;

.field public static final enum REPLACE:Landroidx/work/ExistingWorkPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 30
    new-instance v0, Landroidx/work/ExistingWorkPolicy;

    const/4 v1, 0x0

    const-string v2, "REPLACE"

    invoke-direct {v0, v2, v1}, Landroidx/work/ExistingWorkPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/work/ExistingWorkPolicy;->REPLACE:Landroidx/work/ExistingWorkPolicy;

    .line 36
    new-instance v0, Landroidx/work/ExistingWorkPolicy;

    const/4 v2, 0x1

    const-string v3, "KEEP"

    invoke-direct {v0, v3, v2}, Landroidx/work/ExistingWorkPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/work/ExistingWorkPolicy;->KEEP:Landroidx/work/ExistingWorkPolicy;

    .line 47
    new-instance v0, Landroidx/work/ExistingWorkPolicy;

    const/4 v3, 0x2

    const-string v4, "APPEND"

    invoke-direct {v0, v4, v3}, Landroidx/work/ExistingWorkPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/work/ExistingWorkPolicy;->APPEND:Landroidx/work/ExistingWorkPolicy;

    .line 57
    new-instance v0, Landroidx/work/ExistingWorkPolicy;

    const/4 v4, 0x3

    const-string v5, "APPEND_OR_REPLACE"

    invoke-direct {v0, v5, v4}, Landroidx/work/ExistingWorkPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/work/ExistingWorkPolicy;->APPEND_OR_REPLACE:Landroidx/work/ExistingWorkPolicy;

    const/4 v5, 0x4

    new-array v5, v5, [Landroidx/work/ExistingWorkPolicy;

    .line 24
    sget-object v6, Landroidx/work/ExistingWorkPolicy;->REPLACE:Landroidx/work/ExistingWorkPolicy;

    aput-object v6, v5, v1

    sget-object v1, Landroidx/work/ExistingWorkPolicy;->KEEP:Landroidx/work/ExistingWorkPolicy;

    aput-object v1, v5, v2

    sget-object v1, Landroidx/work/ExistingWorkPolicy;->APPEND:Landroidx/work/ExistingWorkPolicy;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Landroidx/work/ExistingWorkPolicy;->$VALUES:[Landroidx/work/ExistingWorkPolicy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/work/ExistingWorkPolicy;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 24
    const-class v0, Landroidx/work/ExistingWorkPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/work/ExistingWorkPolicy;

    return-object p0
.end method

.method public static values()[Landroidx/work/ExistingWorkPolicy;
    .locals 1

    .line 24
    sget-object v0, Landroidx/work/ExistingWorkPolicy;->$VALUES:[Landroidx/work/ExistingWorkPolicy;

    invoke-virtual {v0}, [Landroidx/work/ExistingWorkPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/work/ExistingWorkPolicy;

    return-object v0
.end method
