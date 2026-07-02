.class Lcom/amazon/kindle/krx/content/KRXAnnotationBuilder$1;
.super Ljava/lang/Object;
.source "KRXAnnotationBuilder.java"

# interfaces
.implements Lcom/amazon/kindle/krx/content/KRXIAnnotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/krx/content/KRXAnnotationBuilder;->buildAnnotation()Lcom/amazon/kindle/krx/content/KRXIAnnotation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/krx/content/KRXAnnotationBuilder;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/krx/content/KRXAnnotationBuilder;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/amazon/kindle/krx/content/KRXAnnotationBuilder$1;->this$0:Lcom/amazon/kindle/krx/content/KRXAnnotationBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAnnotationType()Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/KRXAnnotationBuilder$1;->this$0:Lcom/amazon/kindle/krx/content/KRXAnnotationBuilder;

    invoke-static {v0}, Lcom/amazon/kindle/krx/content/KRXAnnotationBuilder;->access$000(Lcom/amazon/kindle/krx/content/KRXAnnotationBuilder;)Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;

    move-result-object v0

    return-object v0
.end method

.method public getBegin()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/KRXAnnotationBuilder$1;->this$0:Lcom/amazon/kindle/krx/content/KRXAnnotationBuilder;

    invoke-static {v0}, Lcom/amazon/kindle/krx/content/KRXAnnotationBuilder;->access$100(Lcom/amazon/kindle/krx/content/KRXAnnotationBuilder;)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    return-object v0
.end method

.method public getBookText()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getEnd()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/KRXAnnotationBuilder$1;->this$0:Lcom/amazon/kindle/krx/content/KRXAnnotationBuilder;

    invoke-static {v0}, Lcom/amazon/kindle/krx/content/KRXAnnotationBuilder;->access$200(Lcom/amazon/kindle/krx/content/KRXAnnotationBuilder;)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    return-object v0
.end method

.method public getMetadata()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/KRXAnnotationBuilder$1;->this$0:Lcom/amazon/kindle/krx/content/KRXAnnotationBuilder;

    invoke-static {v0}, Lcom/amazon/kindle/krx/content/KRXAnnotationBuilder;->access$400(Lcom/amazon/kindle/krx/content/KRXAnnotationBuilder;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getPosition()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/KRXAnnotationBuilder$1;->this$0:Lcom/amazon/kindle/krx/content/KRXAnnotationBuilder;

    invoke-static {v0}, Lcom/amazon/kindle/krx/content/KRXAnnotationBuilder;->access$100(Lcom/amazon/kindle/krx/content/KRXAnnotationBuilder;)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    return-object v0
.end method

.method public getUserText()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/KRXAnnotationBuilder$1;->this$0:Lcom/amazon/kindle/krx/content/KRXAnnotationBuilder;

    invoke-static {v0}, Lcom/amazon/kindle/krx/content/KRXAnnotationBuilder;->access$300(Lcom/amazon/kindle/krx/content/KRXAnnotationBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
