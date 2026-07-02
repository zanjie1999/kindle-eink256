.class final Lcom/amazon/kindle/download/workflow/WorkflowUtilsKt$verifyFileSystem$1$oldTempFiles$1;
.super Ljava/lang/Object;
.source "WorkflowUtils.kt"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/download/workflow/WorkflowUtilsKt$verifyFileSystem$1;->call()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/download/workflow/WorkflowUtilsKt$verifyFileSystem$1$oldTempFiles$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazon/kindle/download/workflow/WorkflowUtilsKt$verifyFileSystem$1$oldTempFiles$1;

    invoke-direct {v0}, Lcom/amazon/kindle/download/workflow/WorkflowUtilsKt$verifyFileSystem$1$oldTempFiles$1;-><init>()V

    sput-object v0, Lcom/amazon/kindle/download/workflow/WorkflowUtilsKt$verifyFileSystem$1$oldTempFiles$1;->INSTANCE:Lcom/amazon/kindle/download/workflow/WorkflowUtilsKt$verifyFileSystem$1$oldTempFiles$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 3

    const-string p1, "filename"

    .line 139
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "_temp"

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p2, p1, v0, v1, v2}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    return p1
.end method
