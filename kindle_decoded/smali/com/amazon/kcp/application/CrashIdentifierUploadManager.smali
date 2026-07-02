.class public final Lcom/amazon/kcp/application/CrashIdentifierUploadManager;
.super Ljava/lang/Object;
.source "CrashIdentifierUploadHelper.kt"


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/application/CrashIdentifierUploadManager;

.field private static final INSTANCE$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lcom/amazon/kcp/application/CrashIdentifierUploadManager;

    invoke-direct {v0}, Lcom/amazon/kcp/application/CrashIdentifierUploadManager;-><init>()V

    sput-object v0, Lcom/amazon/kcp/application/CrashIdentifierUploadManager;->INSTANCE:Lcom/amazon/kcp/application/CrashIdentifierUploadManager;

    .line 15
    sget-object v0, Lcom/amazon/kcp/application/CrashIdentifierUploadManager$INSTANCE$2;->INSTANCE:Lcom/amazon/kcp/application/CrashIdentifierUploadManager$INSTANCE$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/application/CrashIdentifierUploadManager;->INSTANCE$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getINSTANCE()Lcom/amazon/kcp/application/CrashIdentifierUploadHelper;
    .locals 1

    sget-object v0, Lcom/amazon/kcp/application/CrashIdentifierUploadManager;->INSTANCE$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/application/CrashIdentifierUploadHelper;

    return-object v0
.end method

.method public static final getInstance()Lcom/amazon/kcp/application/CrashIdentifierUploadHelper;
    .locals 2

    .line 20
    sget-object v0, Lcom/amazon/kcp/application/CrashIdentifierUploadManager;->INSTANCE:Lcom/amazon/kcp/application/CrashIdentifierUploadManager;

    invoke-direct {v0}, Lcom/amazon/kcp/application/CrashIdentifierUploadManager;->getINSTANCE()Lcom/amazon/kcp/application/CrashIdentifierUploadHelper;

    move-result-object v0

    const-string v1, "INSTANCE"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
