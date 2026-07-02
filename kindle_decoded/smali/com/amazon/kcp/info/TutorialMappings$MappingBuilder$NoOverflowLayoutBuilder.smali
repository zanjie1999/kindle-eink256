.class Lcom/amazon/kcp/info/TutorialMappings$MappingBuilder$NoOverflowLayoutBuilder;
.super Ljava/lang/Object;
.source "TutorialMappings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/info/TutorialMappings$MappingBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NoOverflowLayoutBuilder"
.end annotation


# instance fields
.field private final overflowLayoutId:I

.field final synthetic this$1:Lcom/amazon/kcp/info/TutorialMappings$MappingBuilder;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/info/TutorialMappings$MappingBuilder;I)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/amazon/kcp/info/TutorialMappings$MappingBuilder$NoOverflowLayoutBuilder;->this$1:Lcom/amazon/kcp/info/TutorialMappings$MappingBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput p2, p0, Lcom/amazon/kcp/info/TutorialMappings$MappingBuilder$NoOverflowLayoutBuilder;->overflowLayoutId:I

    return-void
.end method


# virtual methods
.method withNoOverflowLayout(I)Lcom/amazon/kcp/info/TutorialMappings$MappingBuilder;
    .locals 3

    .line 98
    iget-object v0, p0, Lcom/amazon/kcp/info/TutorialMappings$MappingBuilder$NoOverflowLayoutBuilder;->this$1:Lcom/amazon/kcp/info/TutorialMappings$MappingBuilder;

    iget-object v0, v0, Lcom/amazon/kcp/info/TutorialMappings$MappingBuilder;->mapping:Lcom/amazon/kcp/info/TutorialMappings$Mapping;

    new-instance v1, Lcom/amazon/kcp/info/TutorialMappings$OverflowLayoutMapping;

    iget v2, p0, Lcom/amazon/kcp/info/TutorialMappings$MappingBuilder$NoOverflowLayoutBuilder;->overflowLayoutId:I

    invoke-direct {v1, v2, p1}, Lcom/amazon/kcp/info/TutorialMappings$OverflowLayoutMapping;-><init>(II)V

    iput-object v1, v0, Lcom/amazon/kcp/info/TutorialMappings$Mapping;->layoutMapping:Lcom/amazon/kcp/info/TutorialMappings$LayoutMapping;

    .line 100
    iget-object p1, p0, Lcom/amazon/kcp/info/TutorialMappings$MappingBuilder$NoOverflowLayoutBuilder;->this$1:Lcom/amazon/kcp/info/TutorialMappings$MappingBuilder;

    return-object p1
.end method
