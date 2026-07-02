.class public final Lcom/amazon/identity/auth/device/token/MobileAuthEncryptionKeyManager$a;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/token/MobileAuthEncryptionKeyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field final mQ:Ljava/lang/String;

.field final pi:Ljava/lang/String;

.field final pj:J

.field final pk:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, Lcom/amazon/identity/auth/device/token/MobileAuthEncryptionKeyManager$a;->pi:Ljava/lang/String;

    .line 118
    iput-object p2, p0, Lcom/amazon/identity/auth/device/token/MobileAuthEncryptionKeyManager$a;->mQ:Ljava/lang/String;

    .line 119
    iput-wide p3, p0, Lcom/amazon/identity/auth/device/token/MobileAuthEncryptionKeyManager$a;->pj:J

    .line 120
    iput-wide p5, p0, Lcom/amazon/identity/auth/device/token/MobileAuthEncryptionKeyManager$a;->pk:J

    return-void
.end method
