# hf download unsloth/Qwen3-Coder-Next-GGUF --include '*UD-IQ2_XXS*' --local-dir ~/models/qwen3-coder-next
llama-server \
    --model ~/models/qwen3-coder-next/Qwen3-Coder-Next-UD-IQ2_XXS.gguf \
    --gpu-layers 99 \
    --cpu-moe \
    -ot ".ffn_.*_exps.=CPU" \
    --ctx-size 262144 \
    --flash-attn on \
    --jinja \
    --temp 1.0 \
    --top-p 0.95 \
    --min-p 0.01 \
    --top-k 40 \
    --repeat-penalty 1.05 \
    --cache-type-k q4_0 \
    --cache-type-v q4_0 \
    --host 0.0.0.0
