.class public final Lcom/amazon/kindle/services/authentication/CipherHolder;
.super Ljava/lang/Object;
.source "KindleAuthenticationManager.kt"


# static fields
.field public static final CIPHER_KEY:Ljava/lang/String; = "KindleCipherKey"

.field public static final INSTANCE:Lcom/amazon/kindle/services/authentication/CipherHolder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 244
    new-instance v0, Lcom/amazon/kindle/services/authentication/CipherHolder;

    invoke-direct {v0}, Lcom/amazon/kindle/services/authentication/CipherHolder;-><init>()V

    sput-object v0, Lcom/amazon/kindle/services/authentication/CipherHolder;->INSTANCE:Lcom/amazon/kindle/services/authentication/CipherHolder;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
