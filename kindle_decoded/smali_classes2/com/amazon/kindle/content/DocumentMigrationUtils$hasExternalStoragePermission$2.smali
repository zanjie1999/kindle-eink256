.class final Lcom/amazon/kindle/content/DocumentMigrationUtils$hasExternalStoragePermission$2;
.super Lkotlin/jvm/internal/Lambda;
.source "DocumentMigrationUtils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/content/DocumentMigrationUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/content/DocumentMigrationUtils$hasExternalStoragePermission$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazon/kindle/content/DocumentMigrationUtils$hasExternalStoragePermission$2;

    invoke-direct {v0}, Lcom/amazon/kindle/content/DocumentMigrationUtils$hasExternalStoragePermission$2;-><init>()V

    sput-object v0, Lcom/amazon/kindle/content/DocumentMigrationUtils$hasExternalStoragePermission$2;->INSTANCE:Lcom/amazon/kindle/content/DocumentMigrationUtils$hasExternalStoragePermission$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lcom/amazon/kindle/content/DocumentMigrationUtils$hasExternalStoragePermission$2;->invoke()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Z
    .locals 3

    .line 49
    sget-object v0, Lcom/amazon/kindle/content/DocumentMigrationUtils;->INSTANCE:Lcom/amazon/kindle/content/DocumentMigrationUtils;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lcom/amazon/kindle/content/DocumentMigrationUtils;->hasExternalStoragePermission$default(Lcom/amazon/kindle/content/DocumentMigrationUtils;Landroid/content/Context;ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method
