.class public final enum Landroidx/security/crypto/MasterKey$KeyScheme;
.super Ljava/lang/Enum;
.source "MasterKey.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/security/crypto/MasterKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "KeyScheme"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/security/crypto/MasterKey$KeyScheme;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/security/crypto/MasterKey$KeyScheme;

.field public static final enum AES256_GCM:Landroidx/security/crypto/MasterKey$KeyScheme;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 68
    new-instance v0, Landroidx/security/crypto/MasterKey$KeyScheme;

    const/4 v1, 0x0

    const-string v2, "AES256_GCM"

    invoke-direct {v0, v2, v1}, Landroidx/security/crypto/MasterKey$KeyScheme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/security/crypto/MasterKey$KeyScheme;->AES256_GCM:Landroidx/security/crypto/MasterKey$KeyScheme;

    const/4 v2, 0x1

    new-array v2, v2, [Landroidx/security/crypto/MasterKey$KeyScheme;

    aput-object v0, v2, v1

    .line 67
    sput-object v2, Landroidx/security/crypto/MasterKey$KeyScheme;->$VALUES:[Landroidx/security/crypto/MasterKey$KeyScheme;

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

    .line 67
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/security/crypto/MasterKey$KeyScheme;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 67
    const-class v0, Landroidx/security/crypto/MasterKey$KeyScheme;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/security/crypto/MasterKey$KeyScheme;

    return-object p0
.end method

.method public static values()[Landroidx/security/crypto/MasterKey$KeyScheme;
    .locals 1

    .line 67
    sget-object v0, Landroidx/security/crypto/MasterKey$KeyScheme;->$VALUES:[Landroidx/security/crypto/MasterKey$KeyScheme;

    invoke-virtual {v0}, [Landroidx/security/crypto/MasterKey$KeyScheme;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/security/crypto/MasterKey$KeyScheme;

    return-object v0
.end method
